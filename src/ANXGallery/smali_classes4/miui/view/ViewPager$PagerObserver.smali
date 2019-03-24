.class Lmiui/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic Ob:Lmiui/view/ViewPager;


# direct methods
.method private constructor <init>(Lmiui/view/ViewPager;)V
    .locals 0

    .line 2604
    iput-object p1, p0, Lmiui/view/ViewPager$PagerObserver;->Ob:Lmiui/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/view/ViewPager;Lmiui/view/ViewPager$1;)V
    .locals 0

    .line 2604
    invoke-direct {p0, p1}, Lmiui/view/ViewPager$PagerObserver;-><init>(Lmiui/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 2607
    iget-object v0, p0, Lmiui/view/ViewPager$PagerObserver;->Ob:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->dR()V

    .line 2608
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 2611
    iget-object v0, p0, Lmiui/view/ViewPager$PagerObserver;->Ob:Lmiui/view/ViewPager;

    invoke-virtual {v0}, Lmiui/view/ViewPager;->dR()V

    .line 2612
    return-void
.end method
