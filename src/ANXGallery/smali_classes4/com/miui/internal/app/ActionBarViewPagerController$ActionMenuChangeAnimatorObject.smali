.class Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/app/ActionBarViewPagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionMenuChangeAnimatorObject"
.end annotation


# instance fields
.field final synthetic bS:Lcom/miui/internal/app/ActionBarViewPagerController;

.field private bU:Z

.field private mPosition:I


# direct methods
.method constructor <init>(Lcom/miui/internal/app/ActionBarViewPagerController;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(IZ)V
    .locals 0

    .line 288
    iput p1, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    .line 289
    iput-boolean p2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bU:Z

    .line 290
    return-void
.end method

.method public setValue(F)V
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bS:Lcom/miui/internal/app/ActionBarViewPagerController;

    invoke-static {v0}, Lcom/miui/internal/app/ActionBarViewPagerController;->c(Lcom/miui/internal/app/ActionBarViewPagerController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;

    .line 295
    instance-of v2, v1, Lcom/miui/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_0

    .line 296
    iget v2, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->mPosition:I

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p1

    iget-boolean v4, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bU:Z

    iget-boolean v5, p0, Lcom/miui/internal/app/ActionBarViewPagerController$ActionMenuChangeAnimatorObject;->bU:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Lmiui/app/ActionBar$FragmentViewPagerChangeListener;->onPageScrolled(IFZZ)V

    .line 298
    :cond_0
    goto :goto_0

    .line 300
    :cond_1
    return-void
.end method
