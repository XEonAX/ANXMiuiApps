.class Lcom/miui/gallery/util/DebugUtil$DebugTask$1;
.super Ljava/lang/Object;
.source "DebugUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/DebugUtil$DebugTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/DebugUtil$DebugTask;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/DebugUtil$DebugTask;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/DebugUtil$DebugTask;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask$1;->this$0:Lcom/miui/gallery/util/DebugUtil$DebugTask;

    iput-object p2, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 152
    invoke-static {}, Lcom/miui/gallery/util/DebugUtil;->access$100()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/miui/gallery/util/DebugUtil$DebugTask$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/IntentUtil;->jumpToExplore(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method
