.class Lcom/miui/gallery/cloud/SyncOwnerSubUbiFromLocal;
.super Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;
.source "SyncSubUbifocusFromLocalBase.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extendedAuthToken"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .param p4, "noDelay"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/gallery/cloud/SyncSubUbifocusFromLocalBase;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;Z)V

    .line 99
    return-void
.end method


# virtual methods
.method protected generateDBImage(Landroid/database/Cursor;)Lcom/miui/gallery/data/DBItem;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 108
    new-instance v0, Lcom/miui/gallery/data/DBOwnerSubUbiImage;

    invoke-direct {v0, p1}, Lcom/miui/gallery/data/DBOwnerSubUbiImage;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected getBaseUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/miui/gallery/cloud/GalleryCloudUtils;->OWNER_SUB_UBIFOCUS_URI:Landroid/net/Uri;

    return-object v0
.end method
