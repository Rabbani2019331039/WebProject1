package mod;

public class course {
    private int course_id;
    private String course_name;
    private String course_info;
    private String course_code;
    
    
      public course(int course_id, String course_name, String course_info,String course_code) {
        this.course_id = course_id;
        this.course_name = course_name;
        this.course_info = course_info;
        this.course_code = course_code;
       
    }
    public course(String course_name, String course_info,String course_code) {
        this.course_name = course_name;
        this.course_info = course_info;
        this.course_code=course_code;
    }
    public course(String course_name) {
        this.course_name = course_name;
    }
    
    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getCourse_info() {
        return course_info;
    }

    public void setCourse_info(String course_info) {
        this.course_info = course_info;
    }
    public String getCourse_code() {
        return course_code;
    }

    public void setCourse_code(String course_code) {
        this.course_code = course_code;
    }
    
    
}
