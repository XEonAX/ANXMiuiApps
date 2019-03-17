.class Lcom/miui/gallery/cloud/SyncSharerSubUbiFromLocal;
.super Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;
.source "SyncSubUbifocusFromLocalBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Z)V

    .line 118
    return-void
.end method


# virtual methods
.method protected generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 127
    new-instance v0, Lcom/miui/gallery/data/DBShareSubUbiImage;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBShareSubUbiImage;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->SHARE_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    return-object v0
.end method
