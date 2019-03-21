package android.arch.lifecycle;

public abstract class LiveData<T> {
    private static final Object NOT_SET = new Object();

    private abstract class ObserverWrapper {
    }

    class LifecycleBoundObserver extends ObserverWrapper implements GenericLifecycleObserver {
    }
}
