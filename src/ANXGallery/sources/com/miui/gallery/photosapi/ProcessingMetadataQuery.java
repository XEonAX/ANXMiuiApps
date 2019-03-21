package com.miui.gallery.photosapi;

public interface ProcessingMetadataQuery {

    public enum ProgressStatus {
        INDETERMINATE(1),
        DETERMINATE(2);
        
        private final int identifier;

        private ProgressStatus(int identifier) {
            this.identifier = identifier;
        }

        public int getIdentifier() {
            return this.identifier;
        }

        public static ProgressStatus fromIdentifier(int identifier) {
            if (identifier == DETERMINATE.getIdentifier()) {
                return DETERMINATE;
            }
            return INDETERMINATE;
        }
    }
}
