import 'package:get/get.dart';

class LocalTranslet implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          'tasks'            : 'المهام',
          'edite task'       : 'تعديل المهمه',
          'add new task'     : 'اضافه مهمه جديده',
          'mine'             : 'الاعدادات',
          'title'            : 'العنوان',
          'add note to task' : 'اضافه ملحوظه للمهمه',
          'content'          : 'ملحوظه',
          'edit'             : 'تعديل',
          'add'              : 'اضافه',
          'pure color'       : 'الالوان',
          'pending tasks'    : 'المهام الحاليه',
          'completed tasks'  : 'المهام المكتمله',
          'language'         : 'اللغه',
          'arbic'            : ' اللغه العربيه',
          'englis'           : ' اللغه الانجلزيه',
        },
        "en": {
          'tasks'            : 'Tasks',
          'edite task'       : 'edite task',
          'add new task'     : 'Add New Task',
          'mine'             : 'Mine',
          'title'            : 'Title',
          'add note to task' : 'Add Note to Task',
          'content'          : 'Content',
          'edit'             : 'Edit',
          'add'              : 'Add',
          'pure color'       : 'Pure Color',
          'pending tasks'    : 'Pending Tasks',
          'completed tasks'  : 'Completed Tasks',
          'language'         : 'Language',
          'arbic'            : 'Arbic',
          'englis'           : 'Englis',
        }
      };
}
