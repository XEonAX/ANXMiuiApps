.class public Lmiui/widget/DynamicListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DynamicListView$RearrangeListener;,
        Lmiui/widget/DynamicListView$OnItemRemoveListener;
    }
.end annotation


# static fields
.field private static final RC:I = 0xff

.field private static final RD:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final RE:I = 0x5

.field private static final RF:I = 0x32


# instance fields
.field private final INVALID_ID:I

.field private final INVALID_POINTER_ID:I

.field private NW:I

.field private RG:F

.field private RH:J

.field private RI:I

.field private RJ:I

.field private RK:I

.field private RL:Z

.field private RM:Z

.field private RN:I

.field private RP:I

.field private RQ:I

.field private RR:I

.field private RT:J

.field private RU:J

.field private RV:J

.field private RX:Landroid/graphics/drawable/BitmapDrawable;

.field private RY:Landroid/graphics/Rect;

.field private RZ:Landroid/graphics/Rect;

.field private Sa:Landroid/graphics/Rect;

.field private Sb:Landroid/graphics/Rect;

.field private Sc:Z

.field private Sd:Landroid/graphics/drawable/Drawable;

.field private Se:I

.field private Sf:Landroid/widget/AbsListView$OnScrollListener;

.field private Sg:Landroid/animation/ObjectAnimator;

.field private Sh:Landroid/animation/ObjectAnimator;

.field private Si:Lmiui/widget/DynamicListView$RearrangeListener;

.field private Sj:Lmiui/widget/DynamicListView$OnItemRemoveListener;

.field private Sk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Sl:Landroid/graphics/Bitmap;

.field private Sm:Landroid/animation/AnimatorListenerAdapter;

.field private Sn:Ljava/lang/Runnable;

.field private So:Landroid/widget/AbsListView$OnScrollListener;

.field private qO:I

.field private rl:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lmiui/widget/DynamicListView$1;

    invoke-direct {v0}, Lmiui/widget/DynamicListView$1;-><init>()V

    sput-object v0, Lmiui/widget/DynamicListView;->RD:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 303
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    .line 80
    iput v0, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->RG:F

    .line 84
    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->RH:J

    .line 86
    iput v0, p0, Lmiui/widget/DynamicListView;->RI:I

    .line 88
    iput v0, p0, Lmiui/widget/DynamicListView;->RJ:I

    .line 90
    const/4 v1, 0x0

    iput v1, p0, Lmiui/widget/DynamicListView;->RK:I

    .line 92
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RL:Z

    .line 94
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RM:Z

    .line 96
    iput v1, p0, Lmiui/widget/DynamicListView;->RN:I

    .line 102
    iput v1, p0, Lmiui/widget/DynamicListView;->RR:I

    .line 104
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lmiui/widget/DynamicListView;->RT:J

    .line 106
    iput-wide v2, p0, Lmiui/widget/DynamicListView;->RU:J

    .line 108
    iput-wide v2, p0, Lmiui/widget/DynamicListView;->RV:J

    .line 116
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->Sa:Landroid/graphics/Rect;

    .line 118
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lmiui/widget/DynamicListView;->Sb:Landroid/graphics/Rect;

    .line 120
    iput v0, p0, Lmiui/widget/DynamicListView;->qO:I

    .line 122
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->Sc:Z

    .line 124
    iput v1, p0, Lmiui/widget/DynamicListView;->NW:I

    .line 140
    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sk:Ljava/util/Map;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->rl:Landroid/graphics/Paint;

    .line 146
    new-instance v0, Lmiui/widget/DynamicListView$2;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sm:Landroid/animation/AnimatorListenerAdapter;

    .line 183
    new-instance v0, Lmiui/widget/DynamicListView$3;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sn:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Lmiui/widget/DynamicListView$4;

    invoke-direct {v0, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->So:Landroid/widget/AbsListView$OnScrollListener;

    .line 304
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->d(Landroid/content/Context;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 321
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    const/4 p2, -0x1

    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    .line 80
    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->RG:F

    .line 84
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RH:J

    .line 86
    iput p2, p0, Lmiui/widget/DynamicListView;->RI:I

    .line 88
    iput p2, p0, Lmiui/widget/DynamicListView;->RJ:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->RK:I

    .line 92
    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->RL:Z

    .line 94
    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->RM:Z

    .line 96
    iput v0, p0, Lmiui/widget/DynamicListView;->RN:I

    .line 102
    iput v0, p0, Lmiui/widget/DynamicListView;->RR:I

    .line 104
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->RT:J

    .line 106
    iput-wide v1, p0, Lmiui/widget/DynamicListView;->RU:J

    .line 108
    iput-wide v1, p0, Lmiui/widget/DynamicListView;->RV:J

    .line 116
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/widget/DynamicListView;->Sa:Landroid/graphics/Rect;

    .line 118
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiui/widget/DynamicListView;->Sb:Landroid/graphics/Rect;

    .line 120
    iput p2, p0, Lmiui/widget/DynamicListView;->qO:I

    .line 122
    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->Sc:Z

    .line 124
    iput v0, p0, Lmiui/widget/DynamicListView;->NW:I

    .line 140
    new-instance p2, Lmiui/util/ArrayMap;

    invoke-direct {p2}, Lmiui/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sk:Ljava/util/Map;

    .line 142
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->rl:Landroid/graphics/Paint;

    .line 146
    new-instance p2, Lmiui/widget/DynamicListView$2;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sm:Landroid/animation/AnimatorListenerAdapter;

    .line 183
    new-instance p2, Lmiui/widget/DynamicListView$3;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sn:Ljava/lang/Runnable;

    .line 202
    new-instance p2, Lmiui/widget/DynamicListView$4;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->So:Landroid/widget/AbsListView$OnScrollListener;

    .line 322
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->d(Landroid/content/Context;)V

    .line 323
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 312
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    const/4 p2, -0x1

    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_ID:I

    .line 80
    iput p2, p0, Lmiui/widget/DynamicListView;->INVALID_POINTER_ID:I

    .line 82
    const/4 p3, 0x0

    iput p3, p0, Lmiui/widget/DynamicListView;->RG:F

    .line 84
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RH:J

    .line 86
    iput p2, p0, Lmiui/widget/DynamicListView;->RI:I

    .line 88
    iput p2, p0, Lmiui/widget/DynamicListView;->RJ:I

    .line 90
    const/4 p3, 0x0

    iput p3, p0, Lmiui/widget/DynamicListView;->RK:I

    .line 92
    iput-boolean p3, p0, Lmiui/widget/DynamicListView;->RL:Z

    .line 94
    iput-boolean p3, p0, Lmiui/widget/DynamicListView;->RM:Z

    .line 96
    iput p3, p0, Lmiui/widget/DynamicListView;->RN:I

    .line 102
    iput p3, p0, Lmiui/widget/DynamicListView;->RR:I

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RT:J

    .line 106
    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RU:J

    .line 108
    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RV:J

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sa:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sb:Landroid/graphics/Rect;

    .line 120
    iput p2, p0, Lmiui/widget/DynamicListView;->qO:I

    .line 122
    iput-boolean p3, p0, Lmiui/widget/DynamicListView;->Sc:Z

    .line 124
    iput p3, p0, Lmiui/widget/DynamicListView;->NW:I

    .line 140
    new-instance p2, Lmiui/util/ArrayMap;

    invoke-direct {p2}, Lmiui/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sk:Ljava/util/Map;

    .line 142
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->rl:Landroid/graphics/Paint;

    .line 146
    new-instance p2, Lmiui/widget/DynamicListView$2;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$2;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sm:Landroid/animation/AnimatorListenerAdapter;

    .line 183
    new-instance p2, Lmiui/widget/DynamicListView$3;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$3;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->Sn:Ljava/lang/Runnable;

    .line 202
    new-instance p2, Lmiui/widget/DynamicListView$4;

    invoke-direct {p2, p0}, Lmiui/widget/DynamicListView$4;-><init>(Lmiui/widget/DynamicListView;)V

    iput-object p2, p0, Lmiui/widget/DynamicListView;->So:Landroid/widget/AbsListView$OnScrollListener;

    .line 313
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->d(Landroid/content/Context;)V

    .line 314
    return-void
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;I)I
    .locals 0

    .line 45
    iput p1, p0, Lmiui/widget/DynamicListView;->NW:I

    return p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RU:J

    return-wide v0
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->RT:J

    return-wide p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 45
    iput-object p1, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 45
    iput-object p1, p0, Lmiui/widget/DynamicListView;->Sl:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    .line 45
    iput-object p1, p0, Lmiui/widget/DynamicListView;->RX:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 545
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/DynamicListView;->ap(I)Landroid/view/View;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_0

    .line 547
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    goto :goto_0

    .line 550
    :cond_1
    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 952
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 953
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 955
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 956
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lmiui/widget/DynamicListView;->ap(I)Landroid/view/View;

    move-result-object v3

    .line 957
    if-eqz v3, :cond_0

    .line 958
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    :cond_0
    goto :goto_0

    .line 961
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v2

    .line 962
    iget-object v3, p0, Lmiui/widget/DynamicListView;->Sk:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 963
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 964
    invoke-virtual {p0, v3}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 965
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 966
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 967
    add-int v5, v2, v3

    invoke-virtual {v0, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v5

    .line 968
    iget-object v7, p0, Lmiui/widget/DynamicListView;->Sk:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 972
    :cond_3
    iget-object v1, p0, Lmiui/widget/DynamicListView;->Sj:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v1, p1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    .line 973
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 974
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lmiui/widget/DynamicListView$12;

    invoke-direct {v1, p0, v0, p2}, Lmiui/widget/DynamicListView$12;-><init>(Lmiui/widget/DynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V

    .line 975
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1045
    return-void
.end method

.method static synthetic a(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private ap(I)Landroid/view/View;
    .locals 2

    .line 527
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    .line 528
    if-lt p1, v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 530
    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 532
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;I)I
    .locals 1

    .line 45
    iget v0, p0, Lmiui/widget/DynamicListView;->RK:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/DynamicListView;->RK:I

    return v0
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->RU:J

    return-wide p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 45
    iput-object p1, p0, Lmiui/widget/DynamicListView;->Sg:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic b(Lmiui/widget/DynamicListView;)Lmiui/widget/DynamicListView$RearrangeListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lmiui/widget/DynamicListView;->Si:Lmiui/widget/DynamicListView$RearrangeListener;

    return-object p0
.end method

.method static synthetic c(Lmiui/widget/DynamicListView;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->RV:J

    return-wide p1
.end method

.method static synthetic c(Lmiui/widget/DynamicListView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lmiui/widget/DynamicListView;->RM:Z

    return p0
.end method

.method static synthetic d(Lmiui/widget/DynamicListView;)I
    .locals 0

    .line 45
    iget p0, p0, Lmiui/widget/DynamicListView;->RN:I

    return p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 4

    .line 326
    iget-object v0, p0, Lmiui/widget/DynamicListView;->So:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 327
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 329
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, p0, Lmiui/widget/DynamicListView;->RQ:I

    .line 331
    iget v2, p0, Lmiui/widget/DynamicListView;->RQ:I

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, p0, Lmiui/widget/DynamicListView;->RP:I

    .line 332
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lmiui/widget/DynamicListView;->RR:I

    .line 333
    sget v1, Lcom/miui/internal/R$attr;->dynamicListviewDraggingItemShadow:I

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/graphics/drawable/Drawable;

    .line 334
    iget-object v1, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 335
    invoke-static {p1}, Lmiui/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    sget p1, Lcom/miui/internal/R$drawable;->dynamic_listview_dragging_item_shadow_dark:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 338
    :cond_0
    sget p1, Lcom/miui/internal/R$drawable;->dynamic_listview_dragging_item_shadow_light:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/graphics/drawable/Drawable;

    .line 341
    :cond_1
    :goto_0
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lmiui/widget/DynamicListView;->Se:I

    .line 342
    return-void
.end method

.method static synthetic d(Lmiui/widget/DynamicListView;J)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lmiui/widget/DynamicListView;->i(J)V

    return-void
.end method

.method static synthetic e(Lmiui/widget/DynamicListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lmiui/widget/DynamicListView;->Sf:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method private eH()V
    .locals 6

    .line 387
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 388
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/DynamicListView;->RG:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 390
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lmiui/widget/DynamicListView;->RG:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    float-to-int v2, v3

    .line 392
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 395
    iget-object v1, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 396
    iget-object v1, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 397
    const-string v1, "HoverCellBounds"

    sget-object v2, Lmiui/widget/DynamicListView;->RD:Landroid/animation/TypeEvaluator;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 398
    invoke-static {p0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sg:Landroid/animation/ObjectAnimator;

    .line 400
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sg:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lmiui/widget/DynamicListView;->RH:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 401
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sg:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/DynamicListView$5;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$5;-><init>(Lmiui/widget/DynamicListView;)V

    .line 402
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 410
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sg:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/DynamicListView$6;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$6;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 423
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sg:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 424
    return-void
.end method

.method private eI()V
    .locals 11

    .line 643
    iget v0, p0, Lmiui/widget/DynamicListView;->RI:I

    iget v1, p0, Lmiui/widget/DynamicListView;->RJ:I

    sub-int v7, v0, v1

    .line 644
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lmiui/widget/DynamicListView;->RK:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    .line 645
    iget-object v1, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 646
    iget-wide v2, p0, Lmiui/widget/DynamicListView;->RV:J

    invoke-virtual {p0, v2, v3}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v2

    .line 647
    iget-wide v3, p0, Lmiui/widget/DynamicListView;->RU:J

    invoke-virtual {p0, v3, v4}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v3

    .line 648
    iget-wide v4, p0, Lmiui/widget/DynamicListView;->RT:J

    invoke-virtual {p0, v4, v5}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v4

    .line 649
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    add-int v8, v0, v1

    .line 650
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v8, v9, :cond_0

    .line 651
    move v8, v5

    goto :goto_0

    .line 650
    :cond_0
    nop

    .line 651
    move v8, v6

    :goto_0
    if-eqz v4, :cond_1

    sub-int/2addr v0, v1

    .line 652
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 653
    :cond_1
    move v5, v6

    :goto_1
    if-nez v8, :cond_2

    if-eqz v5, :cond_6

    .line 654
    :cond_2
    if-eqz v8, :cond_3

    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RV:J

    goto :goto_2

    :cond_3
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RT:J

    .line 655
    :goto_2
    if-eqz v8, :cond_4

    goto :goto_3

    .line 656
    :cond_4
    move-object v2, v4

    :goto_3
    invoke-virtual {p0, v3}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 658
    iget-object v5, p0, Lmiui/widget/DynamicListView;->Si:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz v5, :cond_5

    .line 659
    iget-object v5, p0, Lmiui/widget/DynamicListView;->Si:Lmiui/widget/DynamicListView$RearrangeListener;

    .line 661
    invoke-virtual {p0, v2}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 660
    invoke-interface {v5, v4, v8}, Lmiui/widget/DynamicListView$RearrangeListener;->onOrderChanged(II)V

    .line 663
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 664
    iget v4, p0, Lmiui/widget/DynamicListView;->RI:I

    iput v4, p0, Lmiui/widget/DynamicListView;->RJ:I

    .line 665
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    .line 667
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 668
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-wide v2, p0, Lmiui/widget/DynamicListView;->RU:J

    invoke-direct {p0, v2, v3}, Lmiui/widget/DynamicListView;->i(J)V

    .line 671
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    .line 672
    new-instance v10, Lmiui/widget/DynamicListView$7;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v9

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lmiui/widget/DynamicListView$7;-><init>(Lmiui/widget/DynamicListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v9, v10}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 691
    :cond_6
    return-void
.end method

.method private eJ()V
    .locals 8

    .line 698
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RU:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 699
    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->RL:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->Sc:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eK()V

    goto :goto_2

    .line 700
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RL:Z

    .line 701
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->Sc:Z

    .line 702
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RM:Z

    .line 703
    const/4 v2, -0x1

    iput v2, p0, Lmiui/widget/DynamicListView;->qO:I

    .line 709
    iget v2, p0, Lmiui/widget/DynamicListView;->NW:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 710
    iput-boolean v3, p0, Lmiui/widget/DynamicListView;->Sc:Z

    .line 711
    return-void

    .line 713
    :cond_2
    iget-object v2, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 714
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 713
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 715
    iget-object v2, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 716
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 718
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 719
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v7, v0

    .line 716
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 720
    const-string v0, "HoverCellBounds"

    sget-object v2, Lmiui/widget/DynamicListView;->RD:Landroid/animation/TypeEvaluator;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    aput-object v4, v3, v1

    .line 721
    invoke-static {p0, v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    .line 723
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/miui/internal/util/DeviceHelper;->FEATURE_WHOLE_ANIM:Z

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lmiui/widget/DynamicListView;->RH:J

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 724
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    new-instance v1, Lmiui/widget/DynamicListView$8;

    invoke-direct {v1, p0}, Lmiui/widget/DynamicListView$8;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 734
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->Sm:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 735
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 739
    :goto_2
    return-void
.end method

.method private eK()V
    .locals 5

    .line 745
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RU:J

    invoke-virtual {p0, v0, v1}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    .line 746
    iget-boolean v1, p0, Lmiui/widget/DynamicListView;->RL:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 747
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lmiui/widget/DynamicListView;->RT:J

    .line 748
    iput-wide v3, p0, Lmiui/widget/DynamicListView;->RU:J

    .line 749
    iput-wide v3, p0, Lmiui/widget/DynamicListView;->RV:J

    .line 750
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/graphics/drawable/BitmapDrawable;

    .line 752
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 754
    :cond_0
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->RL:Z

    .line 755
    iput-boolean v2, p0, Lmiui/widget/DynamicListView;->RM:Z

    .line 756
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/DynamicListView;->qO:I

    .line 757
    return-void
.end method

.method private eL()V
    .locals 1

    .line 764
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lmiui/widget/DynamicListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/widget/DynamicListView;->RM:Z

    .line 765
    return-void
.end method

.method static synthetic f(Lmiui/widget/DynamicListView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lmiui/widget/DynamicListView;->RL:Z

    return p0
.end method

.method static synthetic g(Lmiui/widget/DynamicListView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eL()V

    return-void
.end method

.method static synthetic h(Lmiui/widget/DynamicListView;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lmiui/widget/DynamicListView;->Sc:Z

    return p0
.end method

.method private i(J)V
    .locals 2

    .line 484
    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result p1

    .line 485
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/BaseAdapter;

    .line 486
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/widget/DynamicListView;->RT:J

    .line 487
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide p1

    iput-wide p1, p0, Lmiui/widget/DynamicListView;->RV:J

    .line 488
    return-void
.end method

.method static synthetic i(Lmiui/widget/DynamicListView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eJ()V

    return-void
.end method

.method static synthetic j(Lmiui/widget/DynamicListView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eI()V

    return-void
.end method

.method static synthetic k(Lmiui/widget/DynamicListView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 45
    iget-object p0, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic l(Lmiui/widget/DynamicListView;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RH:J

    return-wide v0
.end method

.method static synthetic m(Lmiui/widget/DynamicListView;)Landroid/graphics/Paint;
    .locals 0

    .line 45
    iget-object p0, p0, Lmiui/widget/DynamicListView;->rl:Landroid/graphics/Paint;

    return-object p0
.end method

.method private n(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 458
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->o(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 459
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 460
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {p1, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    .line 461
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    .line 462
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 463
    return-object v4
.end method

.method static synthetic n(Lmiui/widget/DynamicListView;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lmiui/widget/DynamicListView;->Sk:Ljava/util/Map;

    return-object p0
.end method

.method private o(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 472
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 473
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 474
    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 560
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 561
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 563
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 565
    :cond_0
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sl:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sl:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->rl:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 568
    :cond_1
    return-void
.end method

.method public getHoverCellBounds()Landroid/graphics/Rect;
    .locals 1

    .line 430
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getLastStateAlpha()I
    .locals 1

    .line 931
    iget-object v0, p0, Lmiui/widget/DynamicListView;->rl:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getPositionForId(J)I
    .locals 0

    .line 511
    invoke-virtual {p0, p1, p2}, Lmiui/widget/DynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object p1

    .line 512
    if-nez p1, :cond_0

    .line 513
    const/4 p1, -0x1

    return p1

    .line 515
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getViewForId(J)Landroid/view/View;
    .locals 6

    .line 494
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getFirstVisiblePosition()I

    move-result v0

    .line 495
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    .line 496
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 497
    invoke-virtual {p0, v2}, Lmiui/widget/DynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 498
    add-int v4, v0, v2

    .line 499
    invoke-virtual {v1, v4}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    .line 500
    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 501
    return-object v3

    .line 496
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 9

    .line 773
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollOffset()I

    move-result v0

    .line 774
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v1

    .line 775
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollExtent()I

    move-result v2

    .line 776
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->computeVerticalScrollRange()I

    move-result v3

    .line 777
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 778
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 779
    iget v5, p0, Lmiui/widget/DynamicListView;->RR:I

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v7, 0xa

    if-gt v4, v5, :cond_1

    if-lez v0, :cond_1

    .line 781
    iget p1, p0, Lmiui/widget/DynamicListView;->RQ:I

    neg-int p1, p1

    iput p1, p0, Lmiui/widget/DynamicListView;->RN:I

    .line 782
    iget p1, p0, Lmiui/widget/DynamicListView;->RR:I

    if-gt v4, p1, :cond_0

    .line 783
    iget p1, p0, Lmiui/widget/DynamicListView;->RP:I

    neg-int p1, p1

    iput p1, p0, Lmiui/widget/DynamicListView;->RN:I

    .line 785
    :cond_0
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sn:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v7, v8}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 786
    return v6

    .line 788
    :cond_1
    add-int/2addr v4, p1

    iget p1, p0, Lmiui/widget/DynamicListView;->RR:I

    mul-int/lit8 p1, p1, 0x2

    sub-int p1, v1, p1

    if-lt v4, p1, :cond_3

    add-int/2addr v0, v2

    if-ge v0, v3, :cond_3

    .line 791
    iget p1, p0, Lmiui/widget/DynamicListView;->RQ:I

    iput p1, p0, Lmiui/widget/DynamicListView;->RN:I

    .line 792
    iget p1, p0, Lmiui/widget/DynamicListView;->RR:I

    sub-int/2addr v1, p1

    if-lt v4, v1, :cond_2

    .line 793
    iget p1, p0, Lmiui/widget/DynamicListView;->RP:I

    iput p1, p0, Lmiui/widget/DynamicListView;->RN:I

    .line 795
    :cond_2
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sn:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v7, v8}, Lmiui/widget/DynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 796
    return v6

    .line 798
    :cond_3
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sn:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 799
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 610
    :pswitch_0
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eK()V

    .line 611
    goto/16 :goto_1

    .line 578
    :pswitch_1
    iget v0, p0, Lmiui/widget/DynamicListView;->qO:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 579
    goto/16 :goto_1

    .line 581
    :cond_0
    iget v0, p0, Lmiui/widget/DynamicListView;->qO:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 582
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/DynamicListView;->RI:I

    .line 583
    iget v0, p0, Lmiui/widget/DynamicListView;->RI:I

    iget v2, p0, Lmiui/widget/DynamicListView;->RJ:I

    sub-int/2addr v0, v2

    .line 584
    iget-boolean v2, p0, Lmiui/widget/DynamicListView;->RL:Z

    if-eqz v2, :cond_5

    .line 585
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sg:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sg:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 586
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sg:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    .line 589
    :cond_1
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget v0, p0, Lmiui/widget/DynamicListView;->RK:I

    add-int/2addr p1, v0

    .line 591
    if-gez p1, :cond_2

    .line 592
    nop

    .line 597
    move p1, v1

    goto :goto_0

    .line 593
    :cond_2
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result v0

    iget-object v2, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_3

    .line 594
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getHeight()I

    move-result p1

    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p1, v0

    .line 597
    :cond_3
    :goto_0
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    iget-object v2, p0, Lmiui/widget/DynamicListView;->RZ:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 598
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 599
    iget-object p1, p0, Lmiui/widget/DynamicListView;->RY:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->setHoverCellBounds(Landroid/graphics/Rect;)V

    .line 600
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eI()V

    .line 601
    iput-boolean v1, p0, Lmiui/widget/DynamicListView;->RM:Z

    .line 602
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eL()V

    .line 603
    return v1

    .line 607
    :pswitch_2
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eJ()V

    .line 608
    goto :goto_1

    .line 574
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/widget/DynamicListView;->RJ:I

    .line 575
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lmiui/widget/DynamicListView;->qO:I

    .line 576
    goto :goto_1

    .line 619
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 622
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 623
    iget v1, p0, Lmiui/widget/DynamicListView;->qO:I

    if-ne v0, v1, :cond_5

    .line 624
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eJ()V

    .line 630
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/widget/DynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V

    .line 820
    return-void
.end method

.method public removeItems(Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 830
    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 831
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 832
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 833
    nop

    .line 834
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 835
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lmiui/widget/DynamicListView;->getPositionForId(J)I

    move-result v10

    .line 836
    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 837
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    if-eqz v2, :cond_0

    .line 839
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 840
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_0
    goto :goto_0

    .line 843
    :cond_1
    nop

    .line 844
    nop

    .line 847
    move v2, v8

    goto :goto_1

    :cond_2
    move v2, v9

    :goto_1
    if-eqz v2, :cond_3

    .line 851
    invoke-direct {v0, v0}, Lmiui/widget/DynamicListView;->o(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lmiui/widget/DynamicListView;->Sl:Landroid/graphics/Bitmap;

    .line 852
    iget-object v2, v0, Lmiui/widget/DynamicListView;->Sj:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    invoke-interface {v2, v1}, Lmiui/widget/DynamicListView$OnItemRemoveListener;->onItemRemove(Ljava/util/List;)V

    .line 853
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 854
    const-string v1, "LastStateAlpha"

    new-array v2, v8, [I

    aput v9, v2, v9

    .line 855
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 856
    iget-wide v2, v0, Lmiui/widget/DynamicListView;->RH:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 857
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 858
    new-instance v2, Lmiui/widget/DynamicListView$9;

    invoke-direct {v2, v0}, Lmiui/widget/DynamicListView$9;-><init>(Lmiui/widget/DynamicListView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 866
    return-void

    .line 868
    :cond_3
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 869
    invoke-direct {v0, v4}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 870
    invoke-direct {v0, v5}, Lmiui/widget/DynamicListView;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 871
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 872
    invoke-virtual {v0, v9}, Lmiui/widget/DynamicListView;->setEnabled(Z)V

    .line 873
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 874
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 875
    new-instance v7, Ljava/util/ArrayList;

    .line 876
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 877
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    .line 879
    move v11, v9

    :goto_2
    if-ge v11, v10, :cond_5

    .line 880
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 881
    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 882
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v13

    neg-int v13, v13

    goto :goto_3

    .line 883
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 884
    :goto_3
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v8, [F

    int-to-float v13, v13

    aput v13, v15, v9

    .line 885
    invoke-static {v12, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 887
    new-instance v14, Lmiui/widget/DynamicListView$10;

    invoke-direct {v14, v0, v12}, Lmiui/widget/DynamicListView$10;-><init>(Lmiui/widget/DynamicListView;Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 906
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    iget-wide v14, v0, Lmiui/widget/DynamicListView;->RH:J

    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 908
    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 909
    iget-wide v13, v0, Lmiui/widget/DynamicListView;->RH:J

    const-wide/16 v15, 0x3

    div-long/2addr v13, v15

    int-to-long v8, v11

    mul-long/2addr v13, v8

    invoke-virtual {v12, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 910
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .line 912
    :cond_5
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 913
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v10, :cond_6

    .line 914
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Animator;

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 913
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 916
    :cond_6
    new-instance v1, Lmiui/widget/DynamicListView$11;

    invoke-direct {v1, v0, v3, v4}, Lmiui/widget/DynamicListView$11;-><init>(Lmiui/widget/DynamicListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 923
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 925
    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDuration(J)V
    .locals 0

    .line 350
    iput-wide p1, p0, Lmiui/widget/DynamicListView;->RH:J

    .line 351
    return-void
.end method

.method public setHoverCellBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 437
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sb:Landroid/graphics/Rect;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->Sa:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 438
    iget-object v0, p0, Lmiui/widget/DynamicListView;->RX:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 439
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sa:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lmiui/widget/DynamicListView;->Se:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lmiui/widget/DynamicListView;->Se:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr p1, v4

    .line 440
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 443
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sd:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sa:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 444
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sb:Landroid/graphics/Rect;

    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sa:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 445
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Sb:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lmiui/widget/DynamicListView;->invalidate(Landroid/graphics/Rect;)V

    .line 446
    return-void
.end method

.method public setLastStateAlpha(I)V
    .locals 1

    .line 938
    iget-object v0, p0, Lmiui/widget/DynamicListView;->rl:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 939
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->invalidate()V

    .line 940
    return-void
.end method

.method public setOnItemRemoveListener(Lmiui/widget/DynamicListView$OnItemRemoveListener;)V
    .locals 0

    .line 1053
    iput-object p1, p0, Lmiui/widget/DynamicListView;->Sj:Lmiui/widget/DynamicListView$OnItemRemoveListener;

    .line 1054
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lmiui/widget/DynamicListView;->Sf:Landroid/widget/AbsListView$OnScrollListener;

    .line 811
    return-void
.end method

.method public setRearrangeListener(Lmiui/widget/DynamicListView$RearrangeListener;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Lmiui/widget/DynamicListView;->Si:Lmiui/widget/DynamicListView$RearrangeListener;

    .line 1063
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 360
    iput p1, p0, Lmiui/widget/DynamicListView;->RG:F

    .line 361
    return-void
.end method

.method public startDragging(I)V
    .locals 3

    .line 369
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 371
    iget-object v0, p0, Lmiui/widget/DynamicListView;->Sm:Landroid/animation/AnimatorListenerAdapter;

    iget-object v1, p0, Lmiui/widget/DynamicListView;->Sh:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 373
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/DynamicListView;->RK:I

    .line 374
    invoke-direct {p0, p1}, Lmiui/widget/DynamicListView;->ap(I)Landroid/view/View;

    move-result-object v0

    .line 375
    invoke-virtual {p0}, Lmiui/widget/DynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/widget/DynamicListView;->RU:J

    .line 376
    invoke-direct {p0, v0}, Lmiui/widget/DynamicListView;->n(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DynamicListView;->RX:Landroid/graphics/drawable/BitmapDrawable;

    .line 377
    invoke-direct {p0}, Lmiui/widget/DynamicListView;->eH()V

    .line 378
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    const/4 p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/DynamicListView;->RL:Z

    .line 380
    iget-wide v0, p0, Lmiui/widget/DynamicListView;->RU:J

    invoke-direct {p0, v0, v1}, Lmiui/widget/DynamicListView;->i(J)V

    .line 381
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Si:Lmiui/widget/DynamicListView$RearrangeListener;

    if-eqz p1, :cond_1

    .line 382
    iget-object p1, p0, Lmiui/widget/DynamicListView;->Si:Lmiui/widget/DynamicListView$RearrangeListener;

    invoke-interface {p1}, Lmiui/widget/DynamicListView$RearrangeListener;->onDragStart()V

    .line 384
    :cond_1
    return-void
.end method
