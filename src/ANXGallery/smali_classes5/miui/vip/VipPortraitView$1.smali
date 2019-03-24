.class Lmiui/vip/VipPortraitView$1;
.super Ljava/lang/Object;
.source "VipPortraitView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipPortraitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiui/vip/VipAchievement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/vip/VipPortraitView;


# direct methods
.method constructor <init>(Lmiui/vip/VipPortraitView;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/vip/VipPortraitView;

    .line 144
    iput-object p1, p0, Lmiui/vip/VipPortraitView$1;->this$0:Lmiui/vip/VipPortraitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 144
    check-cast p1, Lmiui/vip/VipAchievement;

    check-cast p2, Lmiui/vip/VipAchievement;

    invoke-virtual {p0, p1, p2}, Lmiui/vip/VipPortraitView$1;->compare(Lmiui/vip/VipAchievement;Lmiui/vip/VipAchievement;)I

    move-result p1

    return p1
.end method

.method public compare(Lmiui/vip/VipAchievement;Lmiui/vip/VipAchievement;)I
    .locals 4
    .param p1, "lhs"    # Lmiui/vip/VipAchievement;
    .param p2, "rhs"    # Lmiui/vip/VipAchievement;

    .line 147
    iget-wide v0, p1, Lmiui/vip/VipAchievement;->id:J

    iget-wide v2, p2, Lmiui/vip/VipAchievement;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
