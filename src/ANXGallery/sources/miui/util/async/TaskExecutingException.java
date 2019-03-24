package miui.util.async;

class TaskExecutingException extends RuntimeException {
    public TaskExecutingException(Exception exception) {
        super(exception);
    }
}
