.class final Lcom/miui/gallery/util/DebugUtil$2;
.super Ljava/lang/Object;
.source "DebugUtil.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/DebugUtil;->correctPhotoTime(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/ui/ProcessTask$ProcessCallback",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/miui/gallery/util/DebugUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doProcess([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/DebugUtil$2;->doProcess([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public doProcess([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/miui/gallery/util/DebugUtil$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/gallery/util/DebugUtil;->access$200(Landroid/content/Context;)V

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method
