.class public Lmiui/widget/SeekBar;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# instance fields
.field private XT:Lcom/miui/internal/widget/ProgressBarDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lmiui/widget/SeekBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/miui/internal/widget/ProgressBarDelegate;->postConstruct(Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private declared-synchronized fy()Lcom/miui/internal/widget/ProgressBarDelegate;
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lmiui/widget/SeekBar;->XT:Lcom/miui/internal/widget/ProgressBarDelegate;

    if-nez v0, :cond_0

    .line 83
    const-class v0, Landroid/widget/SeekBar;

    invoke-static {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SeekBar;->XT:Lcom/miui/internal/widget/ProgressBarDelegate;

    .line 86
    :cond_0
    iget-object v0, p0, Lmiui/widget/SeekBar;->XT:Lcom/miui/internal/widget/ProgressBarDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    .line 59
    invoke-direct {p0}, Lmiui/widget/SeekBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->drawableStateChanged()V

    .line 60
    return-void
.end method

.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 78
    invoke-direct {p0}, Lmiui/widget/SeekBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lmiui/widget/SeekBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->onSizeChanged(IIII)V

    .line 54
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-direct {p0}, Lmiui/widget/SeekBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminate(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lmiui/widget/SeekBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lmiui/widget/SeekBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-direct {p0}, Lmiui/widget/SeekBar;->fy()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
