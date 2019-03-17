.class public Lcom/miui/gallery/permission/cta/CtaPermissions;
.super Ljava/lang/Object;
.source "CtaPermissions.java"


# static fields
.field private static final CTA_PRIVACY_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/gallery/permission/cta/CtaPermissions;->CTA_PRIVACY_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public static isPrivacyAllowed(Ljava/lang/String;)Z
    .locals 6
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 35
    :cond_1
    sget-object v3, Lcom/miui/gallery/permission/cta/CtaPermissions;->CTA_PRIVACY_PERMISSIONS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 36
    .local v0, "privacyPermission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    invoke-static {p0}, Lcom/miui/gallery/preference/BaseGalleryPreferences$PermissionIntroduction;->isCtaPrivacyPermissionsAllowed(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 35
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
