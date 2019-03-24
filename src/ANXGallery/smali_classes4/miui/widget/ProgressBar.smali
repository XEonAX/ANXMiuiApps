.class public Lmiui/widget/ProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private XT:Lcom/miui/internal/widget/ProgressBarDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lmiui/widget/ProgressBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/miui/internal/widget/ProgressBarDelegate;->postConstruct(Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private declared-synchronized fy()Lcom/miui/internal/widget/ProgressBarDelegate;
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lmiui/widget/ProgressBar;->XT:Lcom/miui/internal/widget/ProgressBarDelegate;

    if-nez v0, :cond_0

    .line 85
    const-class v0, Landroid/widget/ProgressBar;

    invoke-static {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ProgressBar;->XT:Lcom/miui/internal/widget/ProgressBarDelegate;

    .line 88
    :cond_0
    iget-object v0, p0, Lmiui/widget/ProgressBar;->XT:Lcom/miui/internal/widget/ProgressBarDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 79
    invoke-direct {p0}, Lmiui/widget/ProgressBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lmiui/widget/ProgressBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->onSizeChanged(IIII)V

    .line 61
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lmiui/widget/ProgressBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 55
    invoke-direct {p0}, Lmiui/widget/ProgressBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lmiui/widget/ProgressBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lmiui/widget/ProgressBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
