using System;
using System.ComponentModel;
using System.Collections;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Reflection;
using Microsoft.BizTalk.Component.Interop;
using Microsoft.BizTalk.Streaming;

namespace Sp.WanHai.WHLArchiveMessage
{
    [ComponentCategory(CategoryTypes.CATID_PipelineComponent)]
    [ComponentCategory(CategoryTypes.CATID_Any)]
    //[System.Runtime.InteropServices.Guid("AEE2E180-8E4F-426d-9E39-C314E09F977E")]
    [System.Runtime.InteropServices.Guid("666315ed-169c-4075-977c-1bee0bff4838")]
    public class WHLArchivePipelineComponent :
        IBaseComponent,
        Microsoft.BizTalk.Component.Interop.IComponent,
        Microsoft.BizTalk.Component.Interop.IPersistPropertyBag,
        IComponentUI
    {

        // Component information
        #region IBaseComponent
        [Browsable(false)]
        public string Name
        {
            get
            {
                return "WHL Archive Message";
            }
        }
        [Browsable(false)]
        public string Version
        {
            get
            {
                return "1.0";
            }
        }
        [Browsable(false)]
        public string Description
        {
            get
            {
                return "WHL Archive Message Pipeline Component";
            }
        }
        [Browsable(false)]
        public System.IntPtr Icon
        {
            get
            {
                return ((Bitmap)resourceManager.GetObject("IconBitmap")).GetHicon();
            }
        }
        #endregion

        private System.Resources.ResourceManager resourceManager =
            new System.Resources.ResourceManager(
                    "Sp.WanHai.WHLArchiveMessage.WHLArchiveMessage_Component",
                    Assembly.GetExecutingAssembly());

        // Property: ArchivePath
        private string _archivepath;
        [
        DisplayName("ArchivePath"),
        Description("Full path to Archive Folder.")
        ]
        public string ArchivePath
        {
            get { return _archivepath; }
            set { _archivepath = value; }
        }

        // Property: CreateDateFolder
        private bool _createdatefolder;
        [
        DisplayName("CreateDateFolder"),
        Description("Create Date Sub Folder.")
        ]
        public bool CreateDateFolder
        {
            get { return _createdatefolder; }
            set { _createdatefolder = value; }
        }

        // Property: ArchivePath2
        private string _archivepath2;
        [
        DisplayName("ArchivePath2"),
        Description("Full path to Archive2 Folder.")
        ]
        public string ArchivePath2
        {
            get { return _archivepath2; }
            set { _archivepath2 = value; }
        }

        // Property: CreateDateFolder2
        private bool _createdatefolder2;
        [
        DisplayName("CreateDateFolder2"),
        Description("Create Date Sub Folder2.")
        ]
        public bool CreateDateFolder2
        {
            get { return _createdatefolder2; }
            set { _createdatefolder2 = value; }
        }

        // Property: ArchiveFileExt
        private string _ArchiveFileExt;
        [
            DisplayName("ArchiveFileExt"),
            Description("Filename Extension for the Archival file.")
        ]
        public string ArchiveFileExt
        {
            get { return _ArchiveFileExt; }
            set { _ArchiveFileExt = value; }
        }

        // Property: ArchiveFileDomain
        private string _ArchiveFileDomain;
        [
            DisplayName("ArchiveFileDomain"),
            Description("System Name for the Archival file.")
        ]
        public string ArchiveFileDomain
        {
            get { return _ArchiveFileDomain; }
            set { _ArchiveFileDomain = value; }
        }

        // Property: ArchiveFileUsername
        private string _ArchiveFileUsername;
        [
            DisplayName("ArchiveFileUsername"),
            Description("Username to access Archival Path.")
        ]
        public string ArchiveFileUsername
        {
            get { return _ArchiveFileUsername; }
            set { _ArchiveFileUsername = value; }
        }

        // Property: ArchiveFilePassword
        private string _ArchiveFilePassword;
        [
            DisplayName("ArchiveFilePassword"),
            Description("Password to access Archival Path.")
        ]
        public string ArchiveFilePassword
        {
            get { return _ArchiveFilePassword; }
            set { _ArchiveFilePassword = value; }
        }

        private Microsoft.BizTalk.Message.Interop.IBaseMessage CreateSeekableMessage(Microsoft.BizTalk.Message.Interop.IBaseMessage message)
        {
            Stream originalDataStream = message.BodyPart.GetOriginalDataStream();
            // Only create the new seekable stream if the original data stream does not have seek capability
            if (!originalDataStream.CanSeek)
            {
                ReadOnlySeekableStream seekableDataStream = new ReadOnlySeekableStream(originalDataStream);
                message.BodyPart.Data = seekableDataStream;
            }
            return message;
        }

        private void ResetMessageStream(Microsoft.BizTalk.Message.Interop.IBaseMessage message)
        {
            // Reset the stream to position 0
            message.BodyPart.Data.Seek(0, SeekOrigin.Begin);
        }

        // Method:          AddGuidToFilename
        // Description:     When adding a Guid value to a filename, do it before the file suffix
        //   (3 letters only) so that the file can be opened by its expected associated program.
        // Input filename:  file.ext
        // Output filename: file.{guid}.ext
        // Returns: the passed in filename will be set to the new name.
        private void AddGuidToFilename(ref string fname, string guid)
        {
            int extension = 3;
            if (ArchiveFileExt.Length > 0)
            {
                extension = ArchiveFileExt.Length;
            }
            string theName = fname;
            string thePattern = @"\.[a-zA-Z]{" + extension + "}$";

            //if (guid.Length == 0)
            guid = System.Guid.NewGuid().ToString();

            if (fname.Length < 5 || System.Text.RegularExpressions.Regex.IsMatch(theName, thePattern))
                theName = fname.Insert(fname.Length - (extension + 1), "." + guid);
            else
                theName = fname + "." + guid;

            fname = theName;
        }

        #region IPersistPropertyBag Members

        public void InitNew()
        {
        }

        public void GetClassID(out Guid classID)
        {
            classID = new Guid("8f8b9bb3-9835-45a1-86fc-a22224b9820f");
        }

        public void Load(IPropertyBag propertyBag, int errorLog)
        {
            object val;

            val = ReadPropertyBag(propertyBag, "ArchivePath");
            _archivepath = Convert.ToString(val);

            val = ReadPropertyBag(propertyBag, "CreateDateFolder");
            _createdatefolder = Convert.ToBoolean(val);

            val = ReadPropertyBag(propertyBag, "ArchivePath2");
            _archivepath2 = Convert.ToString(val);

            val = ReadPropertyBag(propertyBag, "CreateDateFolder2");
            _createdatefolder2 = Convert.ToBoolean(val);

            val = ReadPropertyBag(propertyBag, "ArchiveFileExt");
            _ArchiveFileExt = Convert.ToString(val);

            val = ReadPropertyBag(propertyBag, "ArchiveFileDomain");
            _ArchiveFileDomain = Convert.ToString(val);

            val = ReadPropertyBag(propertyBag, "ArchiveFileUsername");
            _ArchiveFileUsername = Convert.ToString(val);

            val = ReadPropertyBag(propertyBag, "ArchiveFilePassword");
            _ArchiveFilePassword = Convert.ToString(val);

        }

        public void Save(IPropertyBag propertyBag, bool clearDirty,
                        bool saveAllProperties)
        {
            object val;
            val = (object)_archivepath;
            WritePropertyBag(propertyBag, "ArchivePath", val);

            val = (object)_createdatefolder;
            WritePropertyBag(propertyBag, "CreateDateFolder", val);

            val = (object)_archivepath2;
            WritePropertyBag(propertyBag, "ArchivePath2", val);

            val = (object)_createdatefolder2;
            WritePropertyBag(propertyBag, "CreateDateFolder2", val);

            val = (object)_ArchiveFileExt;
            WritePropertyBag(propertyBag, "ArchiveFileExt", val);

            val = (object)_ArchiveFileDomain;
            WritePropertyBag(propertyBag, "ArchiveFileDomain", val);
            val = (object)_ArchiveFileUsername;
            WritePropertyBag(propertyBag, "ArchiveFileUsername", val);

            val = (object)_ArchiveFilePassword;
            WritePropertyBag(propertyBag, "ArchiveFilePassword", val);
        }

        #endregion


        #region IComponent Members

        public Microsoft.BizTalk.Message.Interop.IBaseMessage
            Execute(IPipelineContext pContext,
            Microsoft.BizTalk.Message.Interop.IBaseMessage pInMsg)
        {
            EventLog myLog = new EventLog();
            myLog.Source = "WHLArchiveMessage";
            Stream originalStrm = null;
            FileStream fs = null;
            FileStream fs2 = null;
            string archivepath;
            string archivepath2;
            bool archive1 = false;
            bool archive2 = false;
            string theGuid;         // special unique value to use for identification and bypassing filename collisions
            string sysGuid = System.Guid.NewGuid().ToString();  // general unique value to use for identification
            bool usedGuid1 = false;
            bool usedGuid2 = false;

            Microsoft.BizTalk.Message.Interop.IBaseMessage seekableMessage = null;
            try
            {
                if (pInMsg != null)
                {
                    // Create a seekable message from the IBaseMessage passed to the pipeline
                    seekableMessage = CreateSeekableMessage(pInMsg);

                    originalStrm = seekableMessage.BodyPart.Data;
                    originalStrm.Seek(0, SeekOrigin.Begin);

                    // enable archiving only if path points to some location
                    archivepath = ArchivePath;
                    if (!String.IsNullOrWhiteSpace(archivepath))
                        archive1 = true;

                    archivepath2 = ArchivePath2;
                    if (!String.IsNullOrWhiteSpace(archivepath2))
                        archive2 = true;

                    // if no archiving is required, bail out right here
                    if ((archive1 == false) && (archive2 == false))
                        return pInMsg;


                    if (archive1 == true)
                    {
                        char lastchar = archivepath[archivepath.Length - 1];

                        if (lastchar != '/' && lastchar != '\\')
                            archivepath = archivepath + Path.DirectorySeparatorChar;

                        if (CreateDateFolder == true)
                        {
                            string currentdate = DateTime.Now.ToString("yyyyMMdd");
                            archivepath = archivepath + currentdate + Path.DirectorySeparatorChar;
                        }
                    }

                    if (archive2 == true)
                    {
                        char lastchar = archivepath2[archivepath2.Length - 1];

                        if (lastchar != '/' && lastchar != '\\')
                            archivepath2 = archivepath2 + Path.DirectorySeparatorChar;

                        if (CreateDateFolder2 == true)
                        {
                            string currentdate = DateTime.Now.ToString("yyyyMMdd");
                            archivepath2 = archivepath2 + currentdate + Path.DirectorySeparatorChar;
                        }
                    }
                    // protect against obvious archiving to the same location ...
                    if (archive1 == true && archive2 == true)
                        if (archivepath.ToLower() == archivepath2.ToLower())
                            archive2 = false;

                    // create the archive directory if it does not exist
                    if (archive1 == true)
                    {
                        if (string.IsNullOrEmpty(ArchiveFileUsername))
                        {
                            DirectoryInfo myDirInfo = new DirectoryInfo(archivepath);
                            if (!myDirInfo.Exists)
                                myDirInfo.Create();
                        }
                        else
                        {
                            using (UNCAccessWithCredentials netUse = new UNCAccessWithCredentials())
                            {
                                if (ArchivePath.Substring(0, ArchivePath.Length) == @"\")
                                {
                                    //Remove \ at the end
                                    ArchivePath = ArchivePath.Substring(0, ArchivePath.Length - 1);
                                }
                                bool isSuccess = netUse.NetUseWithCredentials(ArchivePath, ArchiveFileUsername, ArchiveFileDomain, ArchiveFilePassword);
                                if (isSuccess)
                                {
                                    myLog.WriteEntry("Remote connection success", EventLogEntryType.SuccessAudit);
                                    if (System.IO.Directory.Exists(archivepath) == false)
                                    {
                                        Directory.CreateDirectory(archivepath);
                                    }

                                }
                                else
                                {
                                    myLog.WriteEntry("Remote connection failed to Path " + ArchivePath + "!", EventLogEntryType.Error);
                                }
                            }
                        }
                    }
                    if (archive2 == true)
                    {
                        DirectoryInfo myDirInfo2 = new DirectoryInfo(archivepath2);
                        if (!myDirInfo2.Exists)
                            myDirInfo2.Create();
                    }
                    //-----------------------------------------------------
                    // Get unique id in case we need to use it; keep any braces around the value
                    //   1. use ReceiveInstanceID if in receive pipeline
                    //   2. use BTS.MessageID if in send pipeline
                    //   3. use generic GUID if needed
                    //-----------------------------------------------------
                    theGuid = System.Convert.ToString(pInMsg.Context.Read("ReceiveInstanceID", "http://schemas.microsoft.com/BizTalk/2003/system-properties"));

                    if (theGuid.Length == 0)
                    {
                        theGuid = pInMsg.MessageID.ToString();
                        // System.Diagnostics.Trace.WriteLine("DEBUG: Failed to retrieve ReceiveInstanceID; using BTS.MessageID value of " + theGuid);
                    }

                    if (theGuid.Length == 0)
                    {
                        theGuid = System.Guid.NewGuid().ToString();
                        // System.Diagnostics.Trace.WriteLine("DEBUG: Failed to retrieve value for BTS.MessageID; creating new GUID with value of " + theGuid);
                    }


                    string receiveFilePath = System.Convert.ToString(pInMsg.Context.Read("ReceivedFileName", "http://schemas.microsoft.com/BizTalk/2003/file-properties"));
                    if (receiveFilePath.Length == 0)
                    {   // ReceivedFileName property was not promoted; use the pipeline name instead
                        string[] pipelineNames = pContext.PipelineName.Split(',');      // the context's pipeline name is fully qualified, separated by commas, ","
                        // receiveFilePath = pipelineNames[0] + "_" + theGuid;             //    only use the first part of that name
                        string[] pieces = pipelineNames[0].Split('.');                  // e.g., pipelineNames[0] = "LockBox.SAP.Pipelines.SndSAPPRLockBox"
                        receiveFilePath = pieces[pieces.Length - 1] + "." + theGuid;    //    only use the pipeline name (e.g., "SndSAPPRLockBox"), w/o the namespace
                        usedGuid1 = usedGuid2 = true;
                    }

                    string fname = System.IO.Path.GetFileName(receiveFilePath);
                    //below code by Zameer
                    string fileextension = System.IO.Path.GetExtension(fname);
                    if ((string.IsNullOrEmpty(fileextension)))
                    {
                        var myguid1 = System.Guid.NewGuid().ToString();
                        fname = fname + "_" + myguid1 + "." + ArchiveFileExt;
                    }
                    else
                    {
                        if (!string.IsNullOrEmpty(ArchiveFileExt))
                        {
                            var myguid2 = System.Guid.NewGuid().ToString();
                            fname = fname.Replace(fileextension, "_" + myguid2 + "." + ArchiveFileExt);
                        }
                    }

                    archivepath += fname;
                    archivepath2 += fname;
                    // check if file already exists; if so, rename it
                    if (usedGuid1 == false && File.Exists(archivepath))
                    {
                        AddGuidToFilename(ref archivepath, theGuid);    // use special unique value
                        usedGuid1 = true;
                    }

                    if (usedGuid2 == false && File.Exists(archivepath2))
                    {
                        AddGuidToFilename(ref archivepath2, theGuid);   // use special unique value
                        usedGuid2 = true;
                    }

                    int bufferSize = 4096;
                    byte[] buffer = new byte[bufferSize];
                    int sizeRead = 0;

                    // Create a new stream to store the message in a file.
                    // If the file already exists, due to filename collision, tack on the guid value to make the filename unique.
                    if (archive1 == true)
                    {
                        try
                        {
                            fs = new FileStream(archivepath, FileMode.CreateNew, FileAccess.Write, FileShare.None);
                        }
                        catch (IOException iox)
                        {
                            int hr = System.Runtime.InteropServices.Marshal.GetHRForException(iox);
                            string errorMsg = "Unable to create Archive file file; HResult = 0x"
                                              + String.Format("{0:X}", hr) + ".  Reason: " + iox.Message;

                            System.Diagnostics.Trace.WriteLine("ArchiveMessage 1: " + errorMsg);

                            // hresult of 0x80070050 means the file already exists (due to filename collision)
                            if (hr == unchecked((int)0x80070050))
                            {
                                // rename the file; use special Guid if not used yet, otherwise use generic Guid
                                if (usedGuid1 == false)
                                    AddGuidToFilename(ref archivepath, theGuid);
                                else
                                    archivepath = archivepath.Replace(theGuid, sysGuid);

                                myLog.WriteEntry("ArchiveMessage 1: " + errorMsg + "\n\nRenaming archive file to " + archivepath, EventLogEntryType.Warning);
                                fs = new FileStream(archivepath, FileMode.CreateNew, FileAccess.Write, FileShare.None);
                            }
                            else
                            {
                                // unexpected exception? pass it on and exit
                                throw new System.Exception(errorMsg, iox.InnerException);
                            }
                        }
                    }

                    if (archive2 == true)
                    {
                        try
                        {
                            fs2 = new FileStream(archivepath2, FileMode.CreateNew, FileAccess.Write, FileShare.None);
                        }
                        catch (IOException iox)
                        {
                            int hr = System.Runtime.InteropServices.Marshal.GetHRForException(iox);
                            string errorMsg = "Unable to create archive file; HResult = 0x" + String.Format("{0:X}", hr)
                                + ".  Reason: " + iox.Message;

                            System.Diagnostics.Trace.WriteLine("ArchiveMessage 2: " + errorMsg);

                            // hresult of 0x80070050 means the file already exists (due to filename collision)
                            if (hr == unchecked((int)0x80070050))
                            {
                                // rename the file; use special Guid if not used yet, otherwise use generic Guid
                                if (usedGuid2 == false)
                                    AddGuidToFilename(ref archivepath2, theGuid);
                                else
                                    archivepath2 = archivepath2.Replace(theGuid, sysGuid);

                                myLog.WriteEntry("ArchiveMessage 2: " + errorMsg + "\n\nRenaming archive file to " + archivepath2, EventLogEntryType.Warning);
                                fs2 = new FileStream(archivepath2, FileMode.CreateNew, FileAccess.Write, FileShare.None);
                            }
                            else
                            {
                                // unexpected exception? pass it on and exit
                                throw new System.Exception(errorMsg, iox.InnerException);
                            }
                        }
                    }

                    // write the message contents to the archive file(s)
                    try
                    {
                        while ((sizeRead = originalStrm.Read(buffer, 0, bufferSize)) != 0)
                        {
                            if (fs != null)
                                fs.Write(buffer, 0, sizeRead);

                            if (fs2 != null)
                                fs2.Write(buffer, 0, sizeRead);
                        }
                    }
                    catch (IOException iox)
                    {
                        int hr = System.Runtime.InteropServices.Marshal.GetHRForException(iox);
                        string errorMsg = "Encountered error while writing to archive file(s); HResult = 0x" + String.Format("{0:X}", hr)
                            + ".  Reason: " + iox.Message;

                        // it is difficult to recover here, so just pass on the exception and exit
                        throw new System.Exception(errorMsg, iox.InnerException);
                    }
                }
            }
            catch (Exception ex)
            {
                myLog.WriteEntry("Failed in ArchiveMessage component: " +
                ex.Message + "\n\nStack trace:\n" + ex.StackTrace, EventLogEntryType.Error);
                throw new System.Exception(ex.Message, ex.InnerException);
            }
            finally
            {
                // Flush()/Close() the output stream
                if (fs != null) { fs.Flush(); fs.Close(); }
                if (fs2 != null) { fs2.Flush(); fs2.Close(); }
            }

            // Always reset the message stream
            if (seekableMessage != null)
                ResetMessageStream(seekableMessage);

            if (originalStrm != null)
                originalStrm.Seek(0, SeekOrigin.Begin);

            return pInMsg;
        }

        #endregion


        #region IComponentUI Members

        /// <summary>
        /// The Validate method is called by the BizTalk Editor during the build
        /// of a BizTalk project.
        /// </summary>
        /// <param name="obj">An Object containing
        /// the configuration properties.</param>
        /// <returns>The IEnumerator enables the caller to enumerate through a
        /// collection of strings containing error messages. These error messages
        /// appear as compiler error messages.
        /// To report successful property validation,
        /// the method should return an empty enumerator.</returns>
        public IEnumerator Validate(object projectSystem)
        {
            // example implementation:
            // ArrayList errorList = new ArrayList();
            // errorList.Add("This is a compiler error");
            // return errorList.GetEnumerator();
            return null;
        }
        #endregion

        #region Utility Functions

        /// <summary>
        /// Reads property value from property bag.
        /// </summary>
        /// <param name="pb">Property bag.</param>
        /// <param name="propName">Name of property.</param>
        /// <returns>Value of the property.</returns>
        public static object
            ReadPropertyBag(Microsoft.BizTalk.Component.Interop.IPropertyBag pb,
                            string propName)
        {
            object val = null;

            try
            {
                pb.Read(propName, out val, 0);
            }
            catch (ArgumentException)
            {
                return val;
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }

            return val;
        }

        /// <summary>
        /// Writes property values into a property bag.
        /// </summary>
        /// <param name="pb">Property bag.</param>
        /// <param name="propName">Name of property.</param>
        /// <param name="val">Value of property.</param>
        public static void WritePropertyBag(
                            Microsoft.BizTalk.Component.Interop.IPropertyBag pb,
                            string propName, object val)
        {
            try
            {
                pb.Write(propName, ref val);
            }
            catch (Exception ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }

        #endregion
    }
}
