.class final Lmtopsdk/mtop/global/MtopSDK$1;
.super Ljava/lang/Object;
.source "MtopSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sign:Lmtopsdk/a/a;

.field final synthetic val$ttid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lmtopsdk/a/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$sign:Lmtopsdk/a/a;

    iput-object p3, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$ttid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "mtopsdk.MtopSDK"

    const-string v1, "[init]MtopSDK init Called"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$sign:Lmtopsdk/a/a;

    iget-object v2, p0, Lmtopsdk/mtop/global/MtopSDK$1;->val$ttid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmtopsdk/mtop/global/MtopSDK;->access$000(Landroid/content/Context;Lmtopsdk/a/a;Ljava/lang/String;)V

    .line 87
    return-void
.end method
