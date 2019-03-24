.class Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/widget/TriggerViewDrawer$ScrollableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/TriggerViewDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollViewWrapper"
.end annotation


# instance fields
.field private aaf:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;->aaf:Landroid/widget/ScrollView;

    .line 761
    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 1

    .line 765
    iget-object v0, p0, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;->aaf:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
