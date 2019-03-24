.class public abstract Lmiui/view/PagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POSITION_NONE:I = -0x2

.field public static final POSITION_UNCHANGED:I = -0x1


# instance fields
.field private Mq:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lmiui/view/PagerAdapter;->Mq:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 182
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method destroyItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lmiui/view/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    .line 209
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Lmiui/view/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 258
    const/4 p1, -0x1

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    .line 287
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageWidth(I)F
    .locals 0

    .line 298
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public abstract hasActionMenu(I)Z
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 0

    .line 165
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method instantiateItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lmiui/view/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 266
    iget-object v0, p0, Lmiui/view/PagerAdapter;->Mq:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 267
    return-void
.end method

.method registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lmiui/view/PagerAdapter;->Mq:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 240
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 197
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lmiui/view/PagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 128
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    .line 149
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lmiui/view/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lmiui/view/PagerAdapter;->Mq:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 275
    return-void
.end method
