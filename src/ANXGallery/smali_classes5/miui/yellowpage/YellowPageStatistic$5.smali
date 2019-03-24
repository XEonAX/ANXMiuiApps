.class Lmiui/yellowpage/YellowPageStatistic$5;
.super Ljava/lang/Object;
.source "YellowPageStatistic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/yellowpage/YellowPageStatistic;->clickYellowPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$display:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$srcModuleId:I

.field final synthetic val$yid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 221
    iput-object p1, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$yid:Ljava/lang/String;

    iput-object p3, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$display:Ljava/lang/String;

    iput-object p4, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$source:Ljava/lang/String;

    iput p5, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$srcModuleId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 224
    sget-object v0, Lmiui/yellowpage/YellowPageContract$Statistic;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "click_yellowpage"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 227
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    return-void

    .line 231
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "yid"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$yid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v2, "display"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$display:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "source"

    iget-object v3, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$source:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, "srcModuleId"

    iget v3, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$srcModuleId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    iget-object v2, p0, Lmiui/yellowpage/YellowPageStatistic$5;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 238
    return-void
.end method
