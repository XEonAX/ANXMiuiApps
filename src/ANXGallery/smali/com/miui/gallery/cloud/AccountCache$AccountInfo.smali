.class public Lcom/miui/gallery/cloud/AccountCache$AccountInfo;
.super Ljava/lang/Object;
.source "AccountCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/AccountCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountInfo"
.end annotation


# instance fields
.field public final mAccount:Landroid/accounts/Account;

.field public final mToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "token"    # Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mAccount:Landroid/accounts/Account;

    .line 28
    iput-object p2, p0, Lcom/miui/gallery/cloud/AccountCache$AccountInfo;->mToken:Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    .line 29
    return-void
.end method
