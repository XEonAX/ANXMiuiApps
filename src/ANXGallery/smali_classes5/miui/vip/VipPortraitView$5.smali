.class Lmiui/vip/VipPortraitView$5;
.super Ljava/lang/Object;
.source "VipPortraitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipPortraitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipPortraitView;


# direct methods
.method constructor <init>(Lmiui/vip/VipPortraitView;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/vip/VipPortraitView;

    .line 173
    iput-object p1, p0, Lmiui/vip/VipPortraitView$5;->this$0:Lmiui/vip/VipPortraitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 176
    iget-object v0, p0, Lmiui/vip/VipPortraitView$5;->this$0:Lmiui/vip/VipPortraitView;

    invoke-virtual {v0}, Lmiui/vip/VipPortraitView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.xiaomi.vip.action.VIP_LEVEL_LIST"

    const-string v2, "com.xiaomi.vip"

    invoke-static {v0, v1, v2}, Lcom/miui/internal/vip/utils/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method
