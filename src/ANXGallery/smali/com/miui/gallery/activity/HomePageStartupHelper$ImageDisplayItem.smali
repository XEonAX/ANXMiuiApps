.class Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;
.super Ljava/lang/Object;
.source "HomePageStartupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/activity/HomePageStartupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageDisplayItem"
.end annotation


# instance fields
.field private mFileLength:J

.field private mFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/activity/HomePageStartupHelper;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/activity/HomePageStartupHelper;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "fileLength"    # J

    .prologue
    .line 220
    iput-object p1, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;->this$0:Lcom/miui/gallery/activity/HomePageStartupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;->mFilePath:Ljava/lang/String;

    .line 222
    iput-wide p3, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;->mFileLength:J

    .line 223
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;->mFileLength:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/gallery/activity/HomePageStartupHelper$ImageDisplayItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method
