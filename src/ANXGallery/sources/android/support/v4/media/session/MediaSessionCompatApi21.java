package android.support.v4.media.session;

class MediaSessionCompatApi21 {

    static class QueueItem {
        public static Object getDescription(Object queueItem) {
            return ((android.media.session.MediaSession.QueueItem) queueItem).getDescription();
        }

        public static long getQueueId(Object queueItem) {
            return ((android.media.session.MediaSession.QueueItem) queueItem).getQueueId();
        }
    }
}
