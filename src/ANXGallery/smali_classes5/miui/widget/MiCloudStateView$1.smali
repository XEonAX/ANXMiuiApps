.class Lmiui/widget/MiCloudStateView$1;
.super Ljava/lang/Object;
.source "MiCloudStateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/MiCloudStateView;->updateState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/MiCloudStateView;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lmiui/widget/MiCloudStateView;Z)V
    .locals 0
    .param p1, "this$0"    # Lmiui/widget/MiCloudStateView;

    .line 222
    iput-object p1, p0, Lmiui/widget/MiCloudStateView$1;->this$0:Lmiui/widget/MiCloudStateView;

    iput-boolean p2, p0, Lmiui/widget/MiCloudStateView$1;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-object v0, p0, Lmiui/widget/MiCloudStateView$1;->this$0:Lmiui/widget/MiCloudStateView;

    iget-boolean v1, p0, Lmiui/widget/MiCloudStateView$1;->val$force:Z

    invoke-virtual {v0, v1}, Lmiui/widget/MiCloudStateView;->updateState(Z)V

    .line 226
    return-void
.end method
