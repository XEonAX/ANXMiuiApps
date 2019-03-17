.class Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;
.super Ljava/lang/Object;
.source "ShareFilePrepareFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/sdk/RenderTask$Generator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ShareFilePrepareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputGenerator"
.end annotation


# instance fields
.field private mCacheFolder:Ljava/io/File;

.field private mFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V
    .locals 3

    .prologue
    .line 469
    iput-object p1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd_HH-mm-ss_SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;->mFormat:Ljava/text/SimpleDateFormat;

    .line 471
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;->this$0:Lcom/miui/gallery/ui/ShareFilePrepareFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "render_tmp_files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;->mCacheFolder:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/ShareFilePrepareFragment;Lcom/miui/gallery/ui/ShareFilePrepareFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/ShareFilePrepareFragment$1;

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;-><init>(Lcom/miui/gallery/ui/ShareFilePrepareFragment;)V

    return-void
.end method


# virtual methods
.method public generate(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p1, "input"    # Landroid/net/Uri;

    .prologue
    .line 475
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s.jpg"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "file":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/gallery/ui/ShareFilePrepareFragment$OutputGenerator;->mCacheFolder:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
