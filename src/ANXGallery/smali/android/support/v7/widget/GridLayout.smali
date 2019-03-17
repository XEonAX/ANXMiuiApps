.class public Landroid/support/v7/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayout$Alignment;,
        Landroid/support/v7/widget/GridLayout$Spec;,
        Landroid/support/v7/widget/GridLayout$Interval;,
        Landroid/support/v7/widget/GridLayout$Bounds;,
        Landroid/support/v7/widget/GridLayout$PackedMap;,
        Landroid/support/v7/widget/GridLayout$Assoc;,
        Landroid/support/v7/widget/GridLayout$MutableInt;,
        Landroid/support/v7/widget/GridLayout$Arc;,
        Landroid/support/v7/widget/GridLayout$LayoutParams;,
        Landroid/support/v7/widget/GridLayout$Axis;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I

.field public static final BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final COLUMN_COUNT:I

.field private static final COLUMN_ORDER_PRESERVED:I

.field public static final END:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final FILL:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

.field static final LOG_PRINTER:Landroid/util/Printer;

.field static final NO_PRINTER:Landroid/util/Printer;

.field private static final ORIENTATION:I

.field public static final RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final ROW_COUNT:I

.field private static final ROW_ORDER_PRESERVED:I

.field public static final START:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final TOP:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

.field static final UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final USE_DEFAULT_MARGINS:I


# instance fields
.field mAlignmentMode:I

.field mDefaultGap:I

.field final mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

.field mLastLayoutParamsHashCode:I

.field mOrientation:I

.field mPrinter:Landroid/util/Printer;

.field mUseDefaultMargins:Z

.field final mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 228
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x3

    const-class v2, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    .line 229
    new-instance v0, Landroid/support/v7/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    .line 245
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_orientation:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ORIENTATION:I

    .line 246
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_rowCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ROW_COUNT:I

    .line 247
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_columnCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->COLUMN_COUNT:I

    .line 248
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_useDefaultMargins:I

    sput v0, Landroid/support/v7/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    .line 249
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_alignmentMode:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ALIGNMENT_MODE:I

    .line 250
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_rowOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    .line 251
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_columnOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    .line 2692
    new-instance v0, Landroid/support/v7/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2713
    new-instance v0, Landroid/support/v7/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2734
    new-instance v0, Landroid/support/v7/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2755
    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TOP:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2761
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2767
    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2773
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2802
    sget-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2808
    sget-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2815
    new-instance v0, Landroid/support/v7/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2839
    new-instance v0, Landroid/support/v7/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2900
    new-instance v0, Landroid/support/v7/widget/GridLayout$8;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 270
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 255
    new-instance v1, Landroid/support/v7/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 256
    new-instance v1, Landroid/support/v7/widget/GridLayout$Axis;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 257
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    .line 258
    iput-boolean v2, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    .line 259
    iput v3, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    .line 261
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 262
    sget-object v1, Landroid/support/v7/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/gridlayout/R$dimen;->default_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/GridLayout;->mDefaultGap:I

    .line 272
    sget-object v1, Landroid/support/v7/gridlayout/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 274
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Landroid/support/v7/widget/GridLayout;->ROW_COUNT:I

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setRowCount(I)V

    .line 275
    sget v1, Landroid/support/v7/widget/GridLayout;->COLUMN_COUNT:I

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 276
    sget v1, Landroid/support/v7/widget/GridLayout;->ORIENTATION:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setOrientation(I)V

    .line 277
    sget v1, Landroid/support/v7/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 278
    sget v1, Landroid/support/v7/widget/GridLayout;->ALIGNMENT_MODE:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setAlignmentMode(I)V

    .line 279
    sget v1, Landroid/support/v7/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 280
    sget v1, Landroid/support/v7/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    return-void

    .line 282
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static adjust(II)I
    .locals 2
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .prologue
    .line 940
    add-int v0, p0, p1

    .line 941
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 940
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 614
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 615
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .param p0, "flexibility"    # I

    .prologue
    .line 2923
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V
    .locals 8
    .param p1, "lp"    # Landroid/support/v7/widget/GridLayout$LayoutParams;
    .param p2, "horizontal"    # Z

    .prologue
    const/high16 v7, -0x80000000

    .line 813
    if-eqz p2, :cond_3

    const-string v2, "column"

    .line 814
    .local v2, "groupName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_4

    iget-object v4, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 815
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    iget-object v3, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 816
    .local v3, "span":Landroid/support/v7/widget/GridLayout$Interval;
    iget v5, v3, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-eq v5, v7, :cond_0

    iget v5, v3, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-gez v5, :cond_0

    .line 817
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indices must be positive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 819
    :cond_0
    if-eqz p2, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 820
    .local v0, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :goto_2
    iget v1, v0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 821
    .local v1, "count":I
    if-eq v1, v7, :cond_2

    .line 822
    iget v5, v3, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    if-le v5, v1, :cond_1

    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 826
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v5

    if-le v5, v1, :cond_2

    .line 827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " span mustn\'t exceed the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 830
    :cond_2
    return-void

    .line 813
    .end local v0    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .end local v1    # "count":I
    .end local v2    # "groupName":Ljava/lang/String;
    .end local v3    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_3
    const-string v2, "row"

    goto :goto_0

    .line 814
    .restart local v2    # "groupName":Ljava/lang/String;
    :cond_4
    iget-object v4, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    .line 819
    .restart local v3    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v4    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_2
.end method

.method private static clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I
    .locals 3
    .param p0, "minorRange"    # Landroid/support/v7/widget/GridLayout$Interval;
    .param p1, "minorWasDefined"    # Z
    .param p2, "count"    # I

    .prologue
    .line 721
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v1

    .line 722
    .local v1, "size":I
    if-nez p2, :cond_0

    .line 726
    .end local v1    # "size":I
    :goto_0
    return v1

    .line 725
    .restart local v1    # "size":I
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 726
    .local v0, "min":I
    :goto_1
    sub-int v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 725
    .end local v0    # "min":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private computeLayoutParamsHashCode()I
    .locals 7

    .prologue
    .line 878
    const/4 v4, 0x1

    .line 879
    .local v4, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 880
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 881
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 879
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 883
    .local v3, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    mul-int/lit8 v5, v4, 0x1f

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v6

    add-int v4, v5, v6

    goto :goto_1

    .line 885
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    :cond_1
    return v4
.end method

.method private consistencyCheck()V
    .locals 2

    .prologue
    .line 889
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_1

    .line 890
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->validateLayoutParams()V

    .line 891
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 893
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 895
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 896
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    goto :goto_0
.end method

.method private static createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 1
    .param p0, "ltr"    # Landroid/support/v7/widget/GridLayout$Alignment;
    .param p1, "rtl"    # Landroid/support/v7/widget/GridLayout$Alignment;

    .prologue
    .line 2776
    new-instance v0, Landroid/support/v7/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$5;-><init>(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private static fits([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "value"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 698
    array-length v2, p0

    if-le p3, v2, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v1

    .line 701
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 702
    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 706
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 4
    .param p0, "gravity"    # I
    .param p1, "horizontal"    # Z

    .prologue
    .line 621
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    .line 622
    .local v1, "mask":I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 623
    .local v2, "shift":I
    :goto_1
    and-int v3, p0, v1

    shr-int v0, v3, v2

    .line 624
    .local v0, "flags":I
    sparse-switch v0, :sswitch_data_0

    .line 638
    sget-object v3, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_2
    return-object v3

    .line 621
    .end local v0    # "flags":I
    .end local v1    # "mask":I
    .end local v2    # "shift":I
    :cond_0
    const/16 v1, 0x70

    goto :goto_0

    .line 622
    .restart local v1    # "mask":I
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 626
    .restart local v0    # "flags":I
    .restart local v2    # "shift":I
    :sswitch_0
    if-eqz p1, :cond_2

    sget-object v3, Landroid/support/v7/widget/GridLayout;->LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_2
    sget-object v3, Landroid/support/v7/widget/GridLayout;->TOP:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 628
    :sswitch_1
    if-eqz p1, :cond_3

    sget-object v3, Landroid/support/v7/widget/GridLayout;->RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_3
    sget-object v3, Landroid/support/v7/widget/GridLayout;->BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 630
    :sswitch_2
    sget-object v3, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 632
    :sswitch_3
    sget-object v3, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 634
    :sswitch_4
    sget-object v3, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 636
    :sswitch_5
    sget-object v3, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    .line 624
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDefaultMargin(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I
    .locals 8
    .param p1, "c"    # Landroid/view/View;
    .param p2, "p"    # Landroid/support/v7/widget/GridLayout$LayoutParams;
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 656
    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    if-nez v6, :cond_0

    .line 665
    :goto_0
    return v5

    .line 659
    :cond_0
    if-eqz p3, :cond_2

    iget-object v4, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 660
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 661
    .local v0, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :goto_2
    iget-object v3, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 662
    .local v3, "span":Landroid/support/v7/widget/GridLayout$Interval;
    if-eqz p3, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez p4, :cond_4

    move v2, v1

    .line 663
    .local v2, "leading1":Z
    :goto_3
    if-eqz v2, :cond_7

    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-nez v6, :cond_6

    .line 665
    .local v1, "isAtEdge":Z
    :cond_1
    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v5

    goto :goto_0

    .line 659
    .end local v0    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .end local v1    # "isAtEdge":Z
    .end local v2    # "leading1":Z
    .end local v3    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_2
    iget-object v4, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    .line 660
    .restart local v4    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_2

    .restart local v0    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .restart local v3    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    :cond_4
    move v2, v5

    .line 662
    goto :goto_3

    :cond_5
    move v2, p4

    goto :goto_3

    .restart local v2    # "leading1":Z
    :cond_6
    move v1, v5

    .line 663
    goto :goto_4

    :cond_7
    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_1

    move v1, v5

    goto :goto_4
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 644
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v4/widget/Space;

    if-eq v0, v1, :cond_0

    .line 645
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Space;

    if-ne v0, v1, :cond_1

    .line 646
    :cond_0
    const/4 v0, 0x0

    .line 648
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "isAtEdge"    # Z
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .prologue
    .line 652
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 681
    iget v5, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 682
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 689
    :goto_0
    return v5

    .line 684
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 685
    .local v0, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v3

    .line 686
    .local v3, "margins":[I
    :goto_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 687
    .local v2, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_3

    iget-object v4, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 688
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_3
    if-eqz p3, :cond_4

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v1, v5, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 689
    .local v1, "index":I
    :goto_4
    aget v5, v3, v1

    goto :goto_0

    .line 684
    .end local v0    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .end local v1    # "index":I
    .end local v2    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v3    # "margins":[I
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_1

    .line 685
    .restart local v0    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v3

    goto :goto_2

    .line 687
    .restart local v2    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .restart local v3    # "margins":[I
    :cond_3
    iget-object v4, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_3

    .line 688
    .restart local v4    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_4
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v1, v5, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    goto :goto_4
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 983
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 694
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static handleInvalidParams(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 809
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 789
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 790
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 792
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    .line 793
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 800
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 802
    :cond_0
    return-void
.end method

.method private isLayoutRtlCompat()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 677
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static max2([II)I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "valueIfEmpty"    # I

    .prologue
    .line 605
    move v2, p1

    .line 606
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 607
    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    :cond_0
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "parentHeightSpec"    # I
    .param p4, "childWidth"    # I
    .param p5, "childHeight"    # I

    .prologue
    .line 905
    const/4 v2, 0x1

    .line 906
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    .line 905
    invoke-static {p2, v2, p4}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 907
    .local v1, "childWidthSpec":I
    const/4 v2, 0x0

    .line 908
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    .line 907
    invoke-static {p3, v2, p5}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 909
    .local v0, "childHeightSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 910
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "firstPass"    # Z

    .prologue
    .line 914
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v13

    .local v13, "N":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    .line 915
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 916
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 914
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 917
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v19

    .line 918
    .local v19, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz p3, :cond_2

    .line 919
    move-object/from16 v0, v19

    iget v6, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    move-object/from16 v0, v19

    iget v7, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 921
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    if-nez v2, :cond_3

    const/16 v16, 0x1

    .line 922
    .local v16, "horizontal":Z
    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    .line 923
    .local v21, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v2

    sget-object v4, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    if-ne v2, v4, :cond_0

    .line 924
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    move-object/from16 v20, v0

    .line 925
    .local v20, "span":Landroid/support/v7/widget/GridLayout$Interval;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 926
    .local v14, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :goto_4
    invoke-virtual {v14}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    .line 927
    .local v18, "locations":[I
    move-object/from16 v0, v20

    iget v2, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v4, v18, v4

    sub-int v15, v2, v4

    .line 928
    .local v15, "cellSize":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    .line 929
    .local v6, "viewSize":I
    if-eqz v16, :cond_6

    .line 930
    move-object/from16 v0, v19

    iget v7, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 921
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v20    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v21    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 922
    .restart local v16    # "horizontal":Z
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    goto :goto_3

    .line 925
    .restart local v20    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v21    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_4

    .line 932
    .restart local v6    # "viewSize":I
    .restart local v14    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .restart local v15    # "cellSize":I
    .restart local v18    # "locations":[I
    :cond_6
    move-object/from16 v0, v19

    iget v11, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 937
    .end local v3    # "c":Landroid/view/View;
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v19    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v20    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v21    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .prologue
    .line 710
    array-length v0, p0

    .line 711
    .local v0, "length":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 712
    return-void
.end method

.method private static setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V
    .locals 2
    .param p0, "lp"    # Landroid/support/v7/widget/GridLayout$LayoutParams;
    .param p1, "row"    # I
    .param p2, "rowSpan"    # I
    .param p3, "col"    # I
    .param p4, "colSpan"    # I

    .prologue
    .line 715
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    .line 716
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    .line 717
    return-void
.end method

.method public static spec(I)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I

    .prologue
    .line 2621
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/GridLayout;->spec(II)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IF)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "weight"    # F

    .prologue
    .line 2559
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/support/v7/widget/GridLayout;->spec(IIF)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I

    .prologue
    .line 2605
    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IIF)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "weight"    # F

    .prologue
    .line 2549
    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0, p2}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;F)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/support/v7/widget/GridLayout$Alignment;

    .prologue
    .line 2570
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;F)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/support/v7/widget/GridLayout$Alignment;F)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 6
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/support/v7/widget/GridLayout$Alignment;
    .param p3, "weight"    # F

    .prologue
    .line 2525
    new-instance v0, Landroid/support/v7/widget/GridLayout$Spec;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;F)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateLayoutParams()V
    .locals 21

    .prologue
    .line 731
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v5, 0x1

    .line 732
    .local v5, "horizontal":Z
    :goto_0
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 733
    .local v3, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :goto_1
    iget v0, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    move/from16 v19, v0

    const/high16 v20, -0x80000000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget v4, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 735
    .local v4, "count":I
    :goto_2
    const/4 v8, 0x0

    .line 736
    .local v8, "major":I
    const/4 v14, 0x0

    .line 737
    .local v14, "minor":I
    new-array v13, v4, [I

    .line 739
    .local v13, "maxSizes":[I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_3
    if-ge v6, v2, :cond_d

    .line 740
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 742
    .local v7, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz v5, :cond_6

    iget-object v11, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 743
    .local v11, "majorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_4
    iget-object v9, v11, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 744
    .local v9, "majorRange":Landroid/support/v7/widget/GridLayout$Interval;
    iget-boolean v12, v11, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    .line 745
    .local v12, "majorWasDefined":Z
    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v10

    .line 746
    .local v10, "majorSpan":I
    if-eqz v12, :cond_0

    .line 747
    iget v8, v9, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 750
    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    .line 751
    .local v17, "minorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_5
    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 752
    .local v15, "minorRange":Landroid/support/v7/widget/GridLayout$Interval;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    move/from16 v18, v0

    .line 753
    .local v18, "minorWasDefined":Z
    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Landroid/support/v7/widget/GridLayout;->clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I

    move-result v16

    .line 754
    .local v16, "minorSpan":I
    if-eqz v18, :cond_1

    .line 755
    iget v14, v15, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 758
    :cond_1
    if-eqz v4, :cond_b

    .line 760
    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    .line 761
    :cond_2
    :goto_6
    add-int v19, v14, v16

    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Landroid/support/v7/widget/GridLayout;->fits([IIII)Z

    move-result v19

    if-nez v19, :cond_a

    .line 762
    if-eqz v18, :cond_8

    .line 763
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 731
    .end local v2    # "N":I
    .end local v3    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .end local v4    # "count":I
    .end local v5    # "horizontal":Z
    .end local v6    # "i":I
    .end local v7    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v8    # "major":I
    .end local v9    # "majorRange":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v12    # "majorWasDefined":Z
    .end local v13    # "maxSizes":[I
    .end local v14    # "minor":I
    .end local v15    # "minorRange":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v18    # "minorWasDefined":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 732
    .restart local v5    # "horizontal":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_1

    .line 733
    .restart local v3    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 742
    .restart local v2    # "N":I
    .restart local v4    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .restart local v8    # "major":I
    .restart local v13    # "maxSizes":[I
    .restart local v14    # "minor":I
    :cond_6
    iget-object v11, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_4

    .line 750
    .restart local v9    # "majorRange":Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v10    # "majorSpan":I
    .restart local v11    # "majorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .restart local v12    # "majorWasDefined":Z
    :cond_7
    iget-object v0, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    goto :goto_5

    .line 765
    .restart local v15    # "minorRange":Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v16    # "minorSpan":I
    .restart local v17    # "minorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .restart local v18    # "minorWasDefined":Z
    :cond_8
    add-int v19, v14, v16

    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    .line 766
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 768
    :cond_9
    const/4 v14, 0x0

    .line 769
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 774
    :cond_a
    add-int v19, v14, v16

    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Landroid/support/v7/widget/GridLayout;->procrusteanFill([IIII)V

    .line 777
    :cond_b
    if-eqz v5, :cond_c

    .line 778
    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    .line 783
    :goto_7
    add-int v14, v14, v16

    .line 739
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 780
    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    .line 785
    .end local v7    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v9    # "majorRange":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v12    # "majorWasDefined":Z
    .end local v15    # "minorRange":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v18    # "minorWasDefined":Z
    :cond_d
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 834
    instance-of v3, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    if-nez v3, :cond_0

    .line 842
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 837
    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 839
    .local v0, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/GridLayout;->checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    .line 840
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout;->checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    move v1, v2

    .line 842
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 847
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 852
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 857
    instance-of v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 858
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/support/v7/widget/GridLayout$LayoutParams;)V

    .line 862
    :goto_0
    return-object v0

    .line 859
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 860
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 862
    .restart local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAlignmentMode()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/view/View;

    .prologue
    .line 805
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 669
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 670
    .local v0, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 673
    .local v1, "margin":I
    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I

    move-result v1

    .end local v1    # "margin":I
    :cond_0
    return v1

    .line 670
    :cond_1
    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 988
    const/4 v0, 0x0

    .line 990
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    return v0
.end method

.method public getPrinter()Landroid/util/Printer;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 51
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1015
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    .line 1017
    sub-int v43, p4, p2

    .line 1018
    .local v43, "targetWidth":I
    sub-int v42, p5, p3

    .line 1020
    .local v42, "targetHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v34

    .line 1021
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v36

    .line 1022
    .local v36, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v35

    .line 1023
    .local v35, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v33

    .line 1025
    .local v33, "paddingBottom":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    sub-int v6, v43, v34

    sub-int v6, v6, v35

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    sub-int v6, v42, v36

    sub-int v6, v6, v33

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v26

    .line 1029
    .local v26, "hLocations":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v45

    .line 1031
    .local v45, "vLocations":[I
    const/16 v28, 0x0

    .local v28, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v12

    .local v12, "N":I
    :goto_0
    move/from16 v0, v28

    if-ge v0, v12, :cond_4

    .line 1032
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1033
    .local v4, "c":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_0

    .line 1031
    :goto_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 1034
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v30

    .line 1035
    .local v30, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v20, v0

    .line 1036
    .local v20, "columnSpec":Landroid/support/v7/widget/GridLayout$Spec;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v39, v0

    .line 1038
    .local v39, "rowSpec":Landroid/support/v7/widget/GridLayout$Spec;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    move-object/from16 v19, v0

    .line 1039
    .local v19, "colSpan":Landroid/support/v7/widget/GridLayout$Interval;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    move-object/from16 v38, v0

    .line 1041
    .local v38, "rowSpan":Landroid/support/v7/widget/GridLayout$Interval;
    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v47, v26, v3

    .line 1042
    .local v47, "x1":I
    move-object/from16 v0, v38

    iget v3, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v49, v45, v3

    .line 1044
    .local v49, "y1":I
    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v48, v26, v3

    .line 1045
    .local v48, "x2":I
    move-object/from16 v0, v38

    iget v3, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v50, v45, v3

    .line 1047
    .local v50, "y2":I
    sub-int v18, v48, v47

    .line 1048
    .local v18, "cellWidth":I
    sub-int v17, v50, v49

    .line 1050
    .local v17, "cellHeight":I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v32

    .line 1051
    .local v32, "pWidth":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v31

    .line 1053
    .local v31, "pHeight":I
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v5

    .line 1054
    .local v5, "hAlign":Landroid/support/v7/widget/GridLayout$Alignment;
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v9

    .line 1056
    .local v9, "vAlign":Landroid/support/v7/widget/GridLayout$Alignment;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1057
    .local v2, "boundsX":Landroid/support/v7/widget/GridLayout$Bounds;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1060
    .local v16, "boundsY":Landroid/support/v7/widget/GridLayout$Bounds;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v3

    sub-int v3, v18, v3

    invoke-virtual {v5, v4, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v24

    .line 1061
    .local v24, "gravityOffsetX":I
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v3

    sub-int v3, v17, v3

    invoke-virtual {v9, v4, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v25

    .line 1063
    .local v25, "gravityOffsetY":I
    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v29

    .line 1064
    .local v29, "leftMargin":I
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v44

    .line 1065
    .local v44, "topMargin":I
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v37

    .line 1066
    .local v37, "rightMargin":I
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v15

    .line 1068
    .local v15, "bottomMargin":I
    add-int v40, v29, v37

    .line 1069
    .local v40, "sumMarginsX":I
    add-int v41, v44, v15

    .line 1072
    .local v41, "sumMarginsY":I
    add-int v6, v32, v40

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I

    move-result v13

    .line 1073
    .local v13, "alignmentOffsetX":I
    add-int v10, v31, v41

    const/4 v11, 0x0

    move-object/from16 v6, v16

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I

    move-result v14

    .line 1075
    .local v14, "alignmentOffsetY":I
    sub-int v3, v18, v40

    move/from16 v0, v32

    invoke-virtual {v5, v4, v0, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v46

    .line 1076
    .local v46, "width":I
    sub-int v3, v17, v41

    move/from16 v0, v31

    invoke-virtual {v9, v4, v0, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v27

    .line 1078
    .local v27, "height":I
    add-int v3, v47, v24

    add-int v23, v3, v13

    .line 1080
    .local v23, "dx":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v3

    if-nez v3, :cond_3

    add-int v3, v34, v29

    add-int v21, v3, v23

    .line 1082
    .local v21, "cx":I
    :goto_2
    add-int v3, v36, v49

    add-int v3, v3, v25

    add-int/2addr v3, v14

    add-int v22, v3, v44

    .line 1084
    .local v22, "cy":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v46

    if-ne v0, v3, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_2

    .line 1085
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v46

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1087
    :cond_2
    add-int v3, v21, v46

    add-int v6, v22, v27

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1, v3, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1080
    .end local v21    # "cx":I
    .end local v22    # "cy":I
    :cond_3
    sub-int v3, v43, v46

    sub-int v3, v3, v35

    sub-int v3, v3, v37

    sub-int v21, v3, v23

    goto :goto_2

    .line 1089
    .end local v2    # "boundsX":Landroid/support/v7/widget/GridLayout$Bounds;
    .end local v4    # "c":Landroid/view/View;
    .end local v5    # "hAlign":Landroid/support/v7/widget/GridLayout$Alignment;
    .end local v9    # "vAlign":Landroid/support/v7/widget/GridLayout$Alignment;
    .end local v13    # "alignmentOffsetX":I
    .end local v14    # "alignmentOffsetY":I
    .end local v15    # "bottomMargin":I
    .end local v16    # "boundsY":Landroid/support/v7/widget/GridLayout$Bounds;
    .end local v17    # "cellHeight":I
    .end local v18    # "cellWidth":I
    .end local v19    # "colSpan":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v20    # "columnSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v23    # "dx":I
    .end local v24    # "gravityOffsetX":I
    .end local v25    # "gravityOffsetY":I
    .end local v27    # "height":I
    .end local v29    # "leftMargin":I
    .end local v30    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v31    # "pHeight":I
    .end local v32    # "pWidth":I
    .end local v37    # "rightMargin":I
    .end local v38    # "rowSpan":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v39    # "rowSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v40    # "sumMarginsX":I
    .end local v41    # "sumMarginsY":I
    .end local v44    # "topMargin":I
    .end local v46    # "width":I
    .end local v47    # "x1":I
    .end local v48    # "x2":I
    .end local v49    # "y1":I
    .end local v50    # "y2":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 946
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    .line 950
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    .line 952
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v9

    add-int v0, v8, v9

    .line 953
    .local v0, "hPadding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v9

    add-int v5, v8, v9

    .line 955
    .local v5, "vPadding":I
    neg-int v8, v0

    invoke-static {p1, v8}, Landroid/support/v7/widget/GridLayout;->adjust(II)I

    move-result v7

    .line 956
    .local v7, "widthSpecSansPadding":I
    neg-int v8, v5

    invoke-static {p2, v8}, Landroid/support/v7/widget/GridLayout;->adjust(II)I

    move-result v2

    .line 958
    .local v2, "heightSpecSansPadding":I
    const/4 v8, 0x1

    invoke-direct {p0, v7, v2, v8}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 964
    iget v8, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    if-nez v8, :cond_0

    .line 965
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .line 966
    .local v6, "widthSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 967
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 974
    .local v1, "heightSansPadding":I
    :goto_0
    add-int v8, v6, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 975
    .local v4, "measuredWidth":I
    add-int v8, v1, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 978
    .local v3, "measuredHeight":I
    invoke-static {v4, p1, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    .line 979
    invoke-static {v3, p2, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    .line 977
    invoke-virtual {p0, v8, v9}, Landroid/support/v7/widget/GridLayout;->setMeasuredDimension(II)V

    .line 980
    return-void

    .line 969
    .end local v1    # "heightSansPadding":I
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local v6    # "widthSansPadding":I
    :cond_0
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 970
    .restart local v1    # "heightSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 971
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .restart local v6    # "widthSansPadding":I
    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 995
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 996
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 997
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .param p1, "alignmentMode"    # I

    .prologue
    .line 503
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 505
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "columnCount"    # I

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    .line 422
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 423
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 424
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .param p1, "columnOrderPreserved"    # Z

    .prologue
    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 575
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 576
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 577
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 353
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 354
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    .line 355
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 356
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 358
    :cond_0
    return-void
.end method

.method public setPrinter(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .prologue
    .line 599
    if-nez p1, :cond_0

    sget-object p1, Landroid/support/v7/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    .end local p1    # "printer":Landroid/util/Printer;
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 600
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .param p1, "rowCount"    # I

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    .line 389
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 390
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 391
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .param p1, "rowOrderPreserved"    # Z

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 539
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 540
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 541
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .param p1, "useDefaultMargins"    # Z

    .prologue
    .line 467
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    .line 468
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 469
    return-void
.end method
