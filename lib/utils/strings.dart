class Strings {
  static const createSession = 'Create Session';
  static const createParticipant = 'Add Participant';
  static const add = 'Add';
  static const hello = 'Hello';
  static const iotMakerAttendanceSystem = 'IOT Maker Attendance System';
  static const submit = 'Submit';
  static const save = 'Save';
  static const sessions = 'Sessions';
  static const name = 'Name';
  static const date = 'Date';
  static const dateOfBirth = 'Date Of Birth';
  static const actions = 'Actions';
  static const participants = 'Participants';
  static const participantsForm = 'Participant Form';
  static const participant = 'Participant';
  static const participantDeleted = 'Participant Deleted';
  static const deleteParticipant = 'Deleted Participant';
  static const recordAttendance = 'Record Attendance';
  static const removeAttendance = 'Remove Attendance';
  static const status = 'Status';
  static const attended = 'Attended';
  static const notAttended = 'Not Attended';
  static const attendanceRecorded = 'Attendance Recorded';
  static const attendanceRemoved = 'Attendance Removed';
  static const retry = 'Retry';
  static const delete = 'Delete';
  static const dropFilesHere = 'Drop Files Here';
  static const browseFiles = 'Browse Files';
  static const fileNotSupported = 'File Not Supported';
  static const skipAndNext = 'Skip And Next';
  static const next = 'Next';
  static const back = 'Back';
  static const finish = 'Finish';
  static const selectDate = "Select Date";
  static const import = "Import";
  static const title = 'Title';
  static const sessionCreatedSuccessFully = 'Session Created Successfully';
  static const participantsUploadSuccess = 'Participants Loaded successfully';
  static const editSession = 'Edit Session';
  static const deleteSession = 'Delete Session';
  static const deleteSessionSuccess = 'Session Deleted successfully';
  static const noSessions = 'No Sessions';
  static const sessionEditSuccess = 'Session edited successfully';
  static const phoneNumber = 'Phone number';
  static const gender = 'Gender';
  static const governorate = 'Governorate';
  static const email = 'Email';
  static const yes = 'Yes';
  static const no = 'No';
  static const logIn = 'Login';
  static const logOut = 'Logout';
  static const pdf = 'PDF';
  static const doc = 'DOC';
  static const optionalWithBrackets = ' ( Optional ) ';
  // static const pleaseFillSessionInfo =
  //     'الرجاء ملئ الحقول بالمعلومات الظرورية والتاكد منها قبل الاضافة';
  static const operationCanceled = 'Operation Canceled';
  static const unKnownError = 'UnKnown Error';
  static const connectionFailed = 'Connection Error';
  static const noInternet = 'No Internet';
  static const optionConfirm = "Confirm";
  static const optionCancel = "Cancel";
  static const areYouSure = 'Are You Sure?';
  static const requiredMessage = 'Field Required';
  static const emailError = 'Email format is Wrong';
  static const phoneError = "Phone number is incorrect";
  static const password = 'Password';
  static const pleaseConfirmIdentity = 'Please confirm Your Identity';
  static const loggedInSuccess = 'Login successfully';
  static const send = 'Send';
  static const loading = 'loading...';
  static const cancel = "Cancel";
  static const confirmOperation = "Are You Sure to continue";

  static String count(String? count) {
    return "Count: ${count ?? 0}";
  }

  static String fieldMustEqualError(String? valueName) {
    return 'This field must be equal to $valueName';
  }

  static String minLengthError(int? minLength) {
    return 'The text must consist of a minimum of $minLength characters';
  }

  static String maxLengthError(int? maxLength) {
    return 'The text must consist of a maximum of $maxLength characters';
  }
}
