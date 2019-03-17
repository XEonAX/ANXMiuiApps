.class public Lcom/miui/gallery/share/CloudUserCacheEntry;
.super Ljava/lang/Object;
.source "CloudUserCacheEntry.java"


# instance fields
.field public final mAlbumId:Ljava/lang/String;

.field public final mCreateTime:J

.field public final mPhone:Ljava/lang/String;

.field public final mRelation:Ljava/lang/String;

.field public final mRelationText:Ljava/lang/String;

.field public final mServerStatus:Ljava/lang/String;

.field public final mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "createTime"    # J
    .param p5, "relation"    # Ljava/lang/String;
    .param p6, "relationText"    # Ljava/lang/String;
    .param p7, "serverStatus"    # Ljava/lang/String;
    .param p8, "phone"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mAlbumId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mUserId:Ljava/lang/String;

    .line 17
    iput-wide p3, p0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mCreateTime:J

    .line 18
    iput-object p5, p0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelation:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mRelationText:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mServerStatus:Ljava/lang/String;

    .line 21
    iput-object p8, p0, Lcom/miui/gallery/share/CloudUserCacheEntry;->mPhone:Ljava/lang/String;

    .line 22
    return-void
.end method
