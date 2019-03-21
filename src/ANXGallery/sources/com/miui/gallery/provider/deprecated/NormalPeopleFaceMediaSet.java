package com.miui.gallery.provider.deprecated;

import android.app.Activity;
import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.CloudUtils;
import com.miui.gallery.cloud.CreateGroupItem;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.cloud.peopleface.FaceDataManager;
import com.miui.gallery.cloud.peopleface.PeopleFace;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.model.PeopleContactInfo.Relation;
import com.miui.gallery.model.SendToCloudFolderItem;
import com.miui.gallery.preference.GalleryPreferences.Face;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.GalleryContract;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceFolderItem;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceNewFolerItem;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.GalleryUtils;
import com.miui.gallery.util.GalleryUtils.ConcatConverter;
import com.miui.gallery.util.MiscUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.baby.CopyFaceAlbumItemsToBabyAlbumTask;
import com.miui.gallery.util.face.PeopleCursorHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class NormalPeopleFaceMediaSet implements Parcelable {
    public static final Creator<NormalPeopleFaceMediaSet> CREATOR = new Creator<NormalPeopleFaceMediaSet>() {
        public NormalPeopleFaceMediaSet createFromParcel(Parcel in) {
            return new NormalPeopleFaceMediaSet(in);
        }

        public NormalPeopleFaceMediaSet[] newArray(int size) {
            return new NormalPeopleFaceMediaSet[size];
        }
    };
    protected long mId;
    private String mName;
    protected String mServerId;

    public NormalPeopleFaceMediaSet(long id, String serverId, String name) {
        this.mId = id;
        this.mServerId = serverId;
        this.mName = name;
    }

    public NormalPeopleFaceMediaSet(Parcel in) {
        this.mId = in.readLong();
        this.mServerId = in.readString();
        this.mName = in.readString();
    }

    public String getServerId() {
        return this.mServerId;
    }

    public long getBucketId() {
        return this.mId;
    }

    public String getName() {
        return this.mName;
    }

    public boolean hasName() {
        return !TextUtils.isEmpty(this.mName);
    }

    private void setName(String name) {
        this.mName = name;
    }

    /* JADX WARNING: Missing block: B:50:?, code:
            return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void merge(Context context, ArrayList<NormalPeopleFaceMediaSet> faceSets, String newName) {
        Throwable th;
        if (!faceSets.isEmpty() && !TextUtils.isEmpty(newName)) {
            synchronized (FaceDataManager.PEOPLE_FACE_URI) {
                try {
                    if (faceSets.size() != 1) {
                        NormalPeopleFaceMediaSet targetFaceSet;
                        NormalPeopleFaceMediaSet targetFaceSet2;
                        PeopleFace newFace = FaceDataManager.getGroupByPeopleName(context, newName);
                        if (newFace == null || TextUtils.isEmpty(newFace.serverId)) {
                            Iterator it = faceSets.iterator();
                            while (it.hasNext()) {
                                NormalPeopleFaceMediaSet faceSet = (NormalPeopleFaceMediaSet) it.next();
                                if (!TextUtils.isEmpty(faceSet.getServerId())) {
                                    targetFaceSet = faceSet;
                                    targetFaceSet.rename(context, newName, null);
                                    targetFaceSet2 = targetFaceSet;
                                    break;
                                }
                            }
                        }
                        targetFaceSet2 = null;
                        if (targetFaceSet2 != null) {
                            targetFaceSet = targetFaceSet2;
                        } else if (newFace != null) {
                            try {
                                targetFaceSet = new NormalPeopleFaceMediaSet(Long.parseLong(newFace._id), newFace.serverId, newName);
                            } catch (Throwable th2) {
                                th = th2;
                                targetFaceSet = targetFaceSet2;
                                throw th;
                            }
                        } else {
                            targetFaceSet = (NormalPeopleFaceMediaSet) faceSets.get(0);
                            targetFaceSet.rename(context, newName, null);
                        }
                        faceSets.remove(targetFaceSet);
                        targetFaceSet.mergeToThis(faceSets);
                    } else if (!newName.equalsIgnoreCase(((NormalPeopleFaceMediaSet) faceSets.get(0)).getName())) {
                        ((NormalPeopleFaceMediaSet) faceSets.get(0)).rename(context, newName, null);
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
    }

    private void mergeToThis(ArrayList<NormalPeopleFaceMediaSet> faceSets) {
        String srcIdsSynced = GalleryUtils.concatAll(faceSets, ",", new ConcatConverter<NormalPeopleFaceMediaSet>() {
            public String convertToString(NormalPeopleFaceMediaSet src) {
                String serverId = src.getServerId();
                return (TextUtils.isEmpty(serverId) || TextUtils.equals(serverId, NormalPeopleFaceMediaSet.this.getServerId())) ? "" : "'" + src.getBucketId() + "'";
            }
        });
        String srcIdsNotSynced = GalleryUtils.concatAll(faceSets, ",", new ConcatConverter<NormalPeopleFaceMediaSet>() {
            public String convertToString(NormalPeopleFaceMediaSet src) {
                return TextUtils.isEmpty(src.getServerId()) ? String.valueOf(src.getBucketId()) : "";
            }
        });
        long rowsAffectedSynced = mergeGroups(srcIdsSynced, GalleryUtils.concatAll(faceSets, ",", new ConcatConverter<NormalPeopleFaceMediaSet>() {
            public String convertToString(NormalPeopleFaceMediaSet src) {
                String serverId = src.getServerId();
                return (TextUtils.isEmpty(serverId) || TextUtils.equals(serverId, NormalPeopleFaceMediaSet.this.getServerId())) ? "" : "'" + serverId + "'";
            }
        }), String.valueOf(getBucketId()), getServerId());
        Log.i("PeopleFaceMediaSet", "merge result: rowsAffectedSynced=" + rowsAffectedSynced + ", rowsAffectedNotSynced=" + mergeGroups(srcIdsNotSynced, "", String.valueOf(getBucketId()), getServerId()));
    }

    public boolean rename(Context context, String newName, PeopleContactInfo contact) {
        return rename(context, newName, false, contact);
    }

    public boolean rename(Context context, String newName, boolean needNewNameAlbumMerge2This) {
        return rename(context, newName, needNewNameAlbumMerge2This, null);
    }

    /* JADX WARNING: Missing block: B:21:0x0067, code:
            if (-1 == r8) goto L_0x006e;
     */
    /* JADX WARNING: Missing block: B:22:0x0069, code:
            setName(r16);
     */
    /* JADX WARNING: Missing block: B:42:?, code:
            return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean rename(Context context, String newName, boolean needNewNameAlbumMerge2This, PeopleContactInfo contact) {
        long rowsAffected = -1;
        synchronized (FaceDataManager.PEOPLE_FACE_URI) {
            PeopleFace oldface;
            PeopleFace newface = FaceDataManager.getGroupByPeopleName(context, newName, getBucketId());
            if (TextUtils.isEmpty(getServerId())) {
                long newfaceLocalId = -1;
                if (newface != null) {
                    newfaceLocalId = Long.parseLong(newface._id);
                }
                oldface = FaceDataManager.getGroupByPeopleName(context, getName(), newfaceLocalId);
            } else {
                oldface = FaceDataManager.getGroupByServerId(context, getServerId());
            }
            if (newface == null) {
                if (-1 != renameOldGroup(oldface, newName, contact)) {
                    setName(newName);
                }
                return false;
            } else if (TextUtils.isEmpty(oldface.serverId)) {
                moveFaceFromLocalA2B(oldface._id, newface._id);
                deleteLocalGroups(oldface._id);
            } else if (TextUtils.isEmpty(newface.serverId)) {
                moveFaceFromLocalA2B(newface._id, oldface._id);
                deleteLocalGroups(newface._id);
                rowsAffected = renameOldGroup(oldface, newName);
            } else {
                boolean recommendGroupHidden = Face.isFaceRecommendGroupHidden(oldface.serverId) && Face.isFaceRecommendGroupHidden(newface.serverId);
                if (needNewNameAlbumMerge2This) {
                    rowsAffected = mergeGroupA2GroupB(newface, oldface);
                    Face.setFaceRecommendGroupHidden(oldface.serverId, recommendGroupHidden);
                    renameOldGroup(oldface, newName);
                } else {
                    rowsAffected = mergeGroupA2GroupB(oldface, newface);
                    Face.setFaceRecommendGroupHidden(newface.serverId, recommendGroupHidden);
                }
            }
        }
    }

    private long renameOldGroup(PeopleFace oldface, String newName) {
        return renameOldGroup(oldface, newName, null);
    }

    private long renameOldGroup(PeopleFace oldface, String newName, PeopleContactInfo contact) {
        ContentValues values = new ContentValues();
        if (oldface == null) {
            return -1;
        }
        values.put("peopleName", newName);
        if (contact != null) {
            String contactJson = contact.formatContactJson();
            if (!TextUtils.isEmpty(contactJson)) {
                values.put("peopleContactJsonInfo", contactJson);
            }
            if (!TextUtils.isEmpty(contact.relationWithMe)) {
                int relationType = PeopleContactInfo.getRelationType(contact.relationWithMe);
                if (relationType >= 0) {
                    values.put("relationType", Integer.valueOf(relationType));
                }
                if (PeopleContactInfo.isUserDefineRelation(relationType)) {
                    values.put("relationText", contact.relationWithMeText);
                }
            }
        }
        if (oldface.localFlag == 0) {
            values.put("localFlag", Integer.valueOf(10));
        }
        return FaceDataManager.safeUpdateFace(values, "_id = ? ", new String[]{oldface._id});
    }

    private void deleteLocalGroups(String id) {
        ContentValues values = new ContentValues();
        values.put("localFlag", Integer.valueOf(2));
        FaceDataManager.safeUpdateFace(values, "_id = ? ", new String[]{id});
    }

    private void moveFaceFromLocalA2B(String idA, String idB) {
        ContentValues values = new ContentValues();
        values.put("localFlag", Integer.valueOf(5));
        values.put("localGroupId", idB);
        FaceDataManager.safeUpdateFace(values, "localGroupId = ? and localFlag != ? ", new String[]{idA, String.valueOf(2)});
    }

    private long mergeGroupA2GroupB(PeopleFace peopleA, PeopleFace peopleB) {
        return mergeGroups(peopleA._id, TextUtils.isEmpty(peopleA.serverId) ? "" : "'" + peopleA.serverId + "'", peopleB._id, peopleB.serverId);
    }

    private long mergeGroups(String srcIds, String srcServerIds, String dstId, String dstServerId) {
        long rowsAffected;
        ContentValues values = new ContentValues();
        if (TextUtils.isEmpty(srcServerIds)) {
            values.put("localFlag", Integer.valueOf(2));
            rowsAffected = FaceDataManager.safeUpdateFace(values, String.format(Locale.US, "%s in (%s)", new Object[]{"_id", srcIds}), null);
        } else {
            values.put("localFlag", Integer.valueOf(12));
            values.put("localGroupId", dstId);
            values.put("groupId", dstServerId);
            rowsAffected = FaceDataManager.safeUpdateFace(values, String.format(Locale.US, "%s in (%s) and %s != %s and %s != %d", new Object[]{"_id", srcIds, "_id", dstId, "localFlag", Integer.valueOf(2)}), null);
        }
        FaceDataManager.moveChildrenToAnotherGroup(srcIds, srcServerIds, dstId, dstServerId);
        return rowsAffected;
    }

    public void mergeAnAlbumToThis(String peopleServerIdToBeMerged) {
        if (!TextUtils.equals(peopleServerIdToBeMerged, getServerId())) {
            ContentValues values = new ContentValues();
            values.put("localFlag", Integer.valueOf(12));
            values.put("groupId", getServerId());
            FaceDataManager.safeUpdateFace(values, "serverId = ? and localFlag != ? ", new String[]{peopleServerIdToBeMerged, String.valueOf(2)});
            FaceDataManager.changeChildrenOfPeopleA2PeopleB(peopleServerIdToBeMerged, getServerId());
        }
    }

    public String createBabyAlbumAndAddItems(String albumName, BabyInfo babyInfo, Activity activity) {
        if (CloudUtils.getGroupByFileName(activity, albumName) != null) {
            albumName = albumName + activity.getString(R.string.baby_suffix);
            ToastUtils.makeTextLong((Context) activity, activity.getString(R.string.same_name_album_exist_and_toast, new Object[]{albumName}));
        }
        String localId = CreateGroupItem.localCreateBabyGroup(GalleryApp.sGetAndroidContext(), albumName);
        CopyFaceAlbumItemsToBabyAlbumTask.instance(activity, getAllImagesData(), new SendToCloudFolderItem(0, localId, false, albumName, babyInfo), 0, R.string.creating_baby_album).execute(new Void[0]);
        return localId;
    }

    public Cursor getAllImagesData() {
        return FaceManager.queryAllImagesOfOnePerson(getServerId());
    }

    public static void doMoveFacesToAnother(FaceFolderItem toFolderItem, long[] paths) {
        if (toFolderItem instanceof FaceNewFolerItem) {
            initialFaceNewFolerItem(toFolderItem);
        }
        if (toFolderItem == null) {
            ignoreFaces(paths);
            return;
        }
        long peopleLocalId = -1;
        try {
            peopleLocalId = Long.parseLong(toFolderItem.getId());
        } catch (NumberFormatException e) {
        }
        if (peopleLocalId != -1) {
            move2AnohterAlbum(paths, peopleLocalId);
        }
    }

    private static void initialFaceNewFolerItem(Object data) {
        FaceNewFolerItem folderItem = (FaceNewFolerItem) data;
        if (!folderItem.isCreatedInDb()) {
            PeopleFace newface = FaceDataManager.getGroupByPeopleName(GalleryApp.sGetAndroidContext(), folderItem.getName());
            if (newface != null) {
                ContentValues values = new ContentValues();
                String[] selectionArgs = new String[]{newface._id};
                values.put("visibilityType", Integer.valueOf(1));
                FaceDataManager.safeUpdateFace(values, "_id = ? ", selectionArgs);
                folderItem.setId(newface._id);
            } else {
                folderItem.setId(String.valueOf(FaceDataManager.insertOneGroupWithName2DB(folderItem.getName(), folderItem.getContactjson())));
            }
            folderItem.setCreatedInDb();
        }
    }

    public static void move2AnohterAlbum(long[] ids, long peopleLocalId) {
        if (!TextUtils.isEmpty(formatSelectionIn(ids))) {
            ContentValues values = new ContentValues();
            values.put("localFlag", Integer.valueOf(5));
            values.put("groupId", "");
            values.put("localGroupId", Long.valueOf(peopleLocalId));
            FaceDataManager.safeUpdateFace(values, String.format(Locale.US, "%s IN (%s)", new Object[]{"_id", faceIds}), null);
        }
    }

    public static void ignoreFaces(long[] ids) {
        if (!TextUtils.isEmpty(formatSelectionIn(ids))) {
            ContentValues values = new ContentValues();
            values.put("localFlag", Integer.valueOf(2));
            FaceDataManager.safeUpdateFace(values, String.format(Locale.US, "%s IN (%s)", new Object[]{"_id", faceIds}), null);
        }
    }

    private static String formatSelectionIn(long[] ids) {
        StringBuffer sb = new StringBuffer();
        int len = ids.length;
        for (int i = 0; i < len; i++) {
            sb.append(ids[i]);
            if (i < len - 1) {
                sb.append(',');
            }
        }
        return sb.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:0x00c9  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x007b A:{Catch:{ Exception -> 0x00bb }} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean moveFaceToMyselfGroup(Context context, long peopleId) {
        List<Long> peopleInMyself = FaceManager.queryPeopleIdOfRelation(context, Relation.myself.getRelationType());
        if (peopleInMyself == null || !peopleInMyself.contains(Long.valueOf(peopleId))) {
            String myselfRelationValue = PeopleContactInfo.getRelationValue(Relation.myself);
            doMoveToRelation(new long[]{peopleId}, myselfRelationValue, myselfRelationValue);
        } else {
            peopleInMyself.remove(Long.valueOf(peopleId));
        }
        if (!(peopleInMyself == null || peopleInMyself.isEmpty())) {
            String unknownRelationValue = PeopleContactInfo.getRelationValue(Relation.unknown);
            doMoveToRelation(MiscUtil.listToArray(peopleInMyself), unknownRelationValue, unknownRelationValue);
        }
        String peopleName = null;
        boolean haveOtherPeopleNameOfMe = false;
        try {
            String defaultNameForMyself = PeopleContactInfo.getDefaultNameForMyself(context);
            Cursor cursor = null;
            try {
                cursor = context.getContentResolver().query(GalleryContract.PeopleFace.PERSONS_URI, PeopleCursorHelper.PROJECTION, null, null, null);
                Map<String, String> params;
                String str;
                Object obj;
                if (cursor == null || !cursor.moveToFirst()) {
                    params = new HashMap(2);
                    str = "PeopleOriginName";
                    if (TextUtils.isEmpty(peopleName)) {
                        String obj2 = peopleName;
                    } else {
                        obj2 = "NoName";
                    }
                    params.put(str, obj2);
                    params.put("MarkOtherPeopleWhenExistMe", String.valueOf(haveOtherPeopleNameOfMe));
                    BaseSamplingStatHelper.recordCountEvent("people_mark", "mark_people_to_myself", params);
                    return true;
                }
                while (true) {
                    if (Long.valueOf(PeopleCursorHelper.getPeopleLocalId(cursor)).longValue() == peopleId) {
                        peopleName = PeopleCursorHelper.getPeopleName(cursor);
                    } else if (defaultNameForMyself.equalsIgnoreCase(PeopleCursorHelper.getPeopleName(cursor))) {
                        haveOtherPeopleNameOfMe = true;
                    }
                    
/*
Method generation error in method: com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet.moveFaceToMyselfGroup(android.content.Context, long):boolean, dex: classes.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x0068: IF  (wrap: boolean
  0x0064: INVOKE  (r0_14 boolean) = (r6_1 'cursor' android.database.Cursor) android.database.Cursor.moveToNext():boolean type: INTERFACE) == false  -> B:23:0x006a in method: com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet.moveFaceToMyselfGroup(android.content.Context, long):boolean, dex: classes.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:228)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:205)
	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:100)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:50)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeLoop(RegionGen.java:173)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:61)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:278)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:93)
	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:278)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:63)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:87)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:53)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:173)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:321)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:259)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:221)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:111)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:77)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:10)
	at jadx.core.ProcessClass.process(ProcessClass.java:38)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
Caused by: jadx.core.utils.exceptions.CodegenException: IF can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:539)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:446)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:222)
	... 35 more

*/

    public static boolean moveFaceToRelationGroup(long[] selectIds, String relation, String relationText) {
        if (PeopleContactInfo.getRelationType(relation) != Relation.myself.getRelationType()) {
            return doMoveToRelation(selectIds, relation, relationText);
        }
        if (selectIds.length <= 1) {
            return moveFaceToMyselfGroup(GalleryApp.sGetAndroidContext(), selectIds[0]);
        }
        Log.e("PeopleFaceMediaSet", "Moving more than one person to 'myself' is not allowed!");
        return false;
    }

    private static boolean doMoveToRelation(long[] selectIds, String relation, String relationText) {
        Map<String, String> params;
        ArrayList<ContentProviderOperation> operations = new ArrayList();
        for (long id : selectIds) {
            PeopleContactInfo contactTemp = FaceManager.queryContactInfoOfOnePerson(id);
            if (contactTemp == null) {
                contactTemp = new PeopleContactInfo();
            } else if (PeopleContactInfo.getRelationValue(Relation.myself).equals(contactTemp.relationWithMe)) {
                params = new HashMap(1);
                params.put("MoveToRelation", relation);
                params.put("MoveToRelationText", relationText);
                GalleryStatHelper.recordCountEvent("people_mark", "move_people_from_myself", params);
            }
            contactTemp.relationWithMe = relation;
            contactTemp.relationWithMeText = relationText;
            ContentValues values = new ContentValues();
            String contactJson = contactTemp.formatContactJson();
            if (!TextUtils.isEmpty(contactJson)) {
                values.put("peopleContactJsonInfo", contactJson);
            }
            int relationType = PeopleContactInfo.getRelationType(contactTemp.relationWithMe);
            if (PeopleContactInfo.isUserDefineRelation(relationType)) {
                values.put("relationText", relationText);
            }
            values.put("relationType", Integer.valueOf(relationType));
            values.put("localFlag", Integer.valueOf(10));
            operations.add(ContentProviderOperation.newUpdate(FaceDataManager.PEOPLE_FACE_URI).withValues(values).withSelection("_id = ? ", new String[]{String.valueOf(id)}).build());
        }
        if (!operations.isEmpty()) {
            try {
                GalleryApp.sGetAndroidContext().getContentResolver().applyBatch("com.miui.gallery.cloud.provider", operations);
            } catch (RemoteException e) {
                e.printStackTrace();
            } catch (OperationApplicationException e2) {
                e2.printStackTrace();
            }
        }
        params = new HashMap();
        params.put("relation", relation);
        BaseSamplingStatHelper.recordCountEvent("people", "people_set_relation", params);
        return true;
    }

    public static ArrayList<PeopleFace> getBrothers(String photoServerId) {
        long startGetBrothers = System.currentTimeMillis();
        StringBuffer sb = new StringBuffer();
        Cursor cursor = FaceDataManager.safeQueryFace2ImageByServerId(photoServerId);
        if (cursor == null || cursor.getCount() == 0) {
            closeCursor(cursor);
            return null;
        }
        while (cursor.moveToNext()) {
            FaceDataManager.appendId(sb, cursor.getString(1));
        }
        closeCursor(cursor);
        ArrayList<PeopleFace> brotherPeoples = new ArrayList();
        cursor = FaceDataManager.getFaceInFaceIds(sb.toString(), "");
        if (cursor == null || cursor.getCount() <= 0) {
            closeCursor(cursor);
        } else {
            brotherPeoples = new ArrayList();
            while (cursor.moveToNext()) {
                brotherPeoples.add(new PeopleFace(cursor));
            }
            closeCursor(cursor);
            brotherPeoples = FaceDataManager.fillInPeopleInfo(new LinkedList(brotherPeoples));
        }
        Log.i("PeopleFaceMediaSet", "get brothers cost:" + (System.currentTimeMillis() - startGetBrothers));
        return brotherPeoples;
    }

    private static void closeCursor(Cursor cursor) {
        BaseMiscUtil.closeSilently(cursor);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel dest, int flags) {
        dest.writeLong(this.mId);
        dest.writeString(this.mServerId);
        dest.writeString(this.mName);
    }
}
