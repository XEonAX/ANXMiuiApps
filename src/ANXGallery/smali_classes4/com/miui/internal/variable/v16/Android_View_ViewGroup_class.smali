.class public Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;
.super Lcom/miui/internal/variable/Android_View_ViewGroup_class;
.source "SourceFile"


# static fields
.field protected static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field protected static final R_styleable_ViewGroup:[I

.field protected static final R_styleable_ViewGroup_addStatesFromChildren:I

.field protected static final R_styleable_ViewGroup_alwaysDrawnWithCache:I

.field protected static final R_styleable_ViewGroup_animateLayoutChanges:I

.field protected static final R_styleable_ViewGroup_animationCache:I

.field protected static final R_styleable_ViewGroup_clipChildren:I

.field protected static final R_styleable_ViewGroup_clipToPadding:I

.field protected static final R_styleable_ViewGroup_descendantFocusability:I

.field protected static final R_styleable_ViewGroup_layoutAnimation:I

.field protected static final R_styleable_ViewGroup_persistentDrawingCache:I

.field protected static final R_styleable_ViewGroup_splitMotionEvents:I

.field protected static final com_android_internal_R_styleable:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    const-string v0, "com.android.internal.R$styleable"

    invoke-static {v0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    .line 30
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v1, "ViewGroup_clipChildren"

    const-string v2, "I"

    .line 31
    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_clipChildren:I

    .line 32
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup_clipToPadding"

    const-string v3, "I"

    .line 33
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_clipToPadding:I

    .line 34
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup_animationCache"

    const-string v3, "I"

    .line 35
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_animationCache:I

    .line 36
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup_persistentDrawingCache"

    const-string v3, "I"

    .line 37
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_persistentDrawingCache:I

    .line 38
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup_addStatesFromChildren"

    const-string v3, "I"

    .line 39
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_addStatesFromChildren:I

    .line 40
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup_alwaysDrawnWithCache"

    const-string v3, "I"

    .line 41
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_alwaysDrawnWithCache:I

    .line 42
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup_layoutAnimation"

    const-string v3, "I"

    .line 43
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_layoutAnimation:I

    .line 44
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup_animateLayoutChanges"

    const-string v3, "I"

    .line 45
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_animateLayoutChanges:I

    .line 46
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup_descendantFocusability"

    const-string v3, "I"

    .line 47
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_descendantFocusability:I

    .line 48
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup_splitMotionEvents"

    const-string v3, "I"

    .line 49
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_splitMotionEvents:I

    .line 50
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->com_android_internal_R_styleable:Ljava/lang/Class;

    const-string v2, "ViewGroup"

    const-string v3, "[I"

    .line 51
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup:[I

    .line 53
    const-class v0, Landroid/view/ViewGroup;

    const-string v2, "DESCENDANT_FOCUSABILITY_FLAGS"

    const-string v3, "[I"

    .line 54
    invoke-static {v0, v2, v3}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;-><init>()V

    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected attachPrivateMethods()V
    .locals 2

    .line 76
    const-string v0, "initFromAttributes"

    const-string v1, "(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 77
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachConstructor(Ljava/lang/String;)J

    .line 78
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachConstructor(Ljava/lang/String;)J

    .line 79
    return-void
.end method

.method public buildProxy()V
    .locals 2

    .line 67
    const-string v0, "addInArray"

    const-string v1, "(Landroid/view/View;I)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 68
    const-string v0, "removeFromArray"

    const-string v1, "(I)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 69
    const-string v0, "removeFromArray"

    const-string v1, "(II)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 70
    const-string v0, "onChildVisibilityChanged"

    const-string v1, "(Landroid/view/View;II)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 71
    const-string v0, "resolveLayoutDirection"

    const-string v1, "()Z"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 72
    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->attachPrivateMethods()V

    .line 73
    return-void
.end method

.method protected handle()V
    .locals 10

    .line 83
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V

    .line 84
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v8, v9, v7, v0}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleRemoveFromArray(JLandroid/view/ViewGroup;I)V

    .line 85
    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleRemoveFromArray(JLandroid/view/ViewGroup;II)V

    .line 86
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V

    .line 87
    invoke-virtual {p0, v8, v9, v7}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleResolveLayoutDirection(JLandroid/view/ViewGroup;)Z

    .line 88
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handleInitFromAttributes(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method protected handleAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 94
    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V

    .line 95
    instance-of p1, p3, Landroid/widget/AbsListView;

    if-nez p1, :cond_0

    .line 96
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    .line 98
    :cond_0
    return-void
.end method

.method protected handleInitFromAttributes(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 158
    return-void
.end method

.method protected handleOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    .line 130
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V

    .line 131
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    .line 132
    return-void
.end method

.method protected handleRemoveFromArray(JLandroid/view/ViewGroup;I)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalRemoveFromArray(JLandroid/view/ViewGroup;I)V

    .line 107
    instance-of p1, p3, Landroid/widget/AbsListView;

    if-nez p1, :cond_0

    .line 108
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    .line 110
    :cond_0
    return-void
.end method

.method protected handleRemoveFromArray(JLandroid/view/ViewGroup;II)V
    .locals 0

    .line 118
    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalRemoveFromArray(JLandroid/view/ViewGroup;II)V

    .line 119
    instance-of p1, p3, Landroid/widget/AbsListView;

    if-nez p1, :cond_0

    .line 120
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    .line 122
    :cond_0
    return-void
.end method

.method protected handleResolveLayoutDirection(JLandroid/view/ViewGroup;)Z
    .locals 1

    .line 140
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->originalResolveLayoutDirection(JLandroid/view/ViewGroup;)Z

    move-result p1

    .line 142
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    .line 143
    if-eq v0, p2, :cond_0

    .line 144
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->tagChildSequenceState(Landroid/view/ViewGroup;)V

    .line 146
    :cond_0
    return p1
.end method

.method protected handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 166
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method protected handle_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 176
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->original_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->initFromAttributes(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 179
    return-void
.end method

.method protected initFromAttributes(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 187
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup:[I

    invoke-virtual {p2, p3, v0, p4, p5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 190
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p5

    .line 191
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    .line 192
    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 193
    invoke-virtual {p0, p1, v1, p4, p2}, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    invoke-static {p1, p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->initTagChildSequenceState(Landroid/view/ViewGroup;Landroid/util/AttributeSet;)V

    .line 197
    return-void
.end method

.method protected originalAddInArray(JLandroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 101
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalAddInArray(long, ViewGroup, View, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalInitFromAttributes(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 161
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalInitFromAttributes(long, ViewGroup, Context, AttributeSet)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalOnChildVisibilityChanged(JLandroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 0

    .line 135
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalOnChildVisibilityChanged(long, ViewGroup, View, int, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalRemoveFromArray(JLandroid/view/ViewGroup;I)V
    .locals 0

    .line 113
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalRemoveFromArray(long, ViewGroup, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalRemoveFromArray(JLandroid/view/ViewGroup;II)V
    .locals 0

    .line 125
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalRemoveFromArray(long, ViewGroup, int, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalResolveLayoutDirection(JLandroid/view/ViewGroup;)Z
    .locals 0

    .line 150
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.originalResolveLayoutDirection(long, ViewGroup)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected original_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 170
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.original_init_(long, ViewGroup, Context, AttributeSet)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected original_init_(JLandroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 182
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_ViewGroup_class.original_init_(long, ViewGroup, Context, AttributeSet, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected processAttribute(Landroid/view/ViewGroup;ILandroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 3

    .line 200
    sget v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_clipChildren:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    .line 201
    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto/16 :goto_0

    .line 202
    :cond_0
    sget v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_clipToPadding:I

    if-ne p2, v0, :cond_1

    .line 203
    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto/16 :goto_0

    .line 204
    :cond_1
    sget v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_animationCache:I

    if-ne p2, v0, :cond_2

    .line 205
    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_0

    .line 206
    :cond_2
    sget v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_persistentDrawingCache:I

    if-ne p2, v0, :cond_3

    .line 207
    const/4 p4, 0x2

    invoke-virtual {p3, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_0

    .line 208
    :cond_3
    sget v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_addStatesFromChildren:I

    const/4 v2, 0x0

    if-ne p2, v0, :cond_4

    .line 209
    invoke-virtual {p3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_0

    .line 210
    :cond_4
    sget v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_alwaysDrawnWithCache:I

    if-ne p2, v0, :cond_5

    .line 211
    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_0

    .line 212
    :cond_5
    sget v0, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_layoutAnimation:I

    if-ne p2, v0, :cond_7

    .line 213
    const/4 v0, -0x1

    invoke-virtual {p3, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 214
    if-lez p2, :cond_6

    .line 215
    invoke-static {p4, p2}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 217
    :cond_6
    goto :goto_0

    :cond_7
    sget p4, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_descendantFocusability:I

    if-ne p2, p4, :cond_8

    .line 218
    sget-object p4, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {p3, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    aget p2, p4, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_0

    .line 219
    :cond_8
    sget p4, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_splitMotionEvents:I

    if-ne p2, p4, :cond_9

    .line 220
    invoke-virtual {p3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_0

    .line 221
    :cond_9
    sget p4, Lcom/miui/internal/variable/v16/Android_View_ViewGroup_class;->R_styleable_ViewGroup_animateLayoutChanges:I

    if-ne p2, p4, :cond_a

    .line 222
    invoke-virtual {p3, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 223
    if-eqz p2, :cond_a

    .line 224
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 227
    :cond_a
    :goto_0
    return-void
.end method
