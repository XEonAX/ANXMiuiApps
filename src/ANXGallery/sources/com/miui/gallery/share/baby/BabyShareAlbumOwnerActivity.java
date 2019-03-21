package com.miui.gallery.share.baby;

import android.text.TextUtils;
import com.miui.gallery.R;
import com.miui.gallery.cloud.GalleryCloudUtils;
import com.miui.gallery.share.AlbumShareOperations.OutgoingInvitation;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.share.CloudUserCacheEntry;
import com.miui.gallery.share.ShareAlbumOwnerBaseActivity;
import com.miui.gallery.share.ShareUserAdapterBase;
import java.util.List;

public class BabyShareAlbumOwnerActivity extends ShareAlbumOwnerBaseActivity {
    private static final RelationEntry[] sDefaultRelationEntries = new RelationEntry[]{new RelationEntry("father", R.string.relation_text_father), new RelationEntry("mother", R.string.relation_text_mother), new RelationEntry("grandfather", R.string.relation_text_grandfather), new RelationEntry("grandmother", R.string.relation_text_grandmother), new RelationEntry("maternalGrandfather", R.string.relation_text_maternal_grandfather), new RelationEntry("maternalGrandmother", R.string.relation_text_maternal_grandmother)};

    private static class RelationEntry {
        String relation;
        int relationTextId;

        RelationEntry(String relation, int relationTextId) {
            this.relation = relation;
            this.relationTextId = relationTextId;
        }
    }

    public String getPageName() {
        return "album_baby_share_owner_info";
    }

    protected int getContentView() {
        return R.layout.baby_share_album_owner;
    }

    protected int getPreferencesResourceId() {
        return R.xml.baby_share_album_preference;
    }

    protected List<CloudUserCacheEntry> getShareUsers() {
        List<CloudUserCacheEntry> users = super.getShareUsers();
        users.add(getOwnerEntry(GalleryCloudUtils.getAccountName()));
        RelationEntry[] relationEntryArr = sDefaultRelationEntries;
        int length = relationEntryArr.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < length) {
                RelationEntry relationEntry = relationEntryArr[i2];
                boolean exists = false;
                for (CloudUserCacheEntry user : users) {
                    if (TextUtils.equals(relationEntry.relation, user.mRelation)) {
                        exists = true;
                        break;
                    }
                }
                if (!exists) {
                    users.add(new CloudUserCacheEntry(this.mAlbumId, null, 0, relationEntry.relation, getString(relationEntry.relationTextId), null, null));
                }
                i = i2 + 1;
            } else {
                users.add(new CloudUserCacheEntry(this.mAlbumId, null, 0, "family", getString(R.string.family_member_invitation_text), null, null));
                return users;
            }
        }
    }

    protected ShareUserAdapterBase createShareUserAdapter() {
        return new BabyAlbumShareUserAdapter(this, GalleryCloudUtils.getAccountName());
    }

    protected void requestInvitation(CloudUserCacheEntry entry, OnCompletionListener<Void, OutgoingInvitation> urlRequestListener) {
        if (entry != null) {
            String relationText = entry.mRelationText;
            if (TextUtils.isEmpty(relationText) && TextUtils.equals(entry.mRelation, "family")) {
                relationText = getString(R.string.relation_text_family);
            }
            CloudUserCacheEntry ownerEntry = getOwnerEntry(GalleryCloudUtils.getAccountName());
            requestInvitation(entry.mRelation, relationText, ownerEntry.mRelation, ownerEntry.mRelationText, urlRequestListener);
        }
    }
}
