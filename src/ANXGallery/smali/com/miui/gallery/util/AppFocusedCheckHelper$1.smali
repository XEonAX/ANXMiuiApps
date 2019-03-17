.class Lcom/miui/gallery/util/AppFocusedCheckHelper$1;
.super Ljava/lang/Object;
.source "AppFocusedCheckHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/AppFocusedCheckHelper$CheckAppFocusedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/AppFocusedCheckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/util/AppFocusedCheckHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/AppFocusedCheckHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/util/AppFocusedCheckHelper;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper$1;->this$0:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheck(Z)V
    .locals 1
    .param p1, "appFocused"    # Z

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/gallery/util/AppFocusedCheckHelper$1;->this$0:Lcom/miui/gallery/util/AppFocusedCheckHelper;

    invoke-static {v0, p1}, Lcom/miui/gallery/util/AppFocusedCheckHelper;->access$002(Lcom/miui/gallery/util/AppFocusedCheckHelper;Z)Z

    .line 23
    return-void
.end method
