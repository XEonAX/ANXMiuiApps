.class public abstract Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;
    }
.end annotation


# static fields
.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field private static final kt:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/util/async/ConcurrentWeakHashMap<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-direct {v0}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->kt:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 23
    sget-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->kt:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-virtual {v0, p1}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 24
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public abstract getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
.end method

.method public setId(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 28
    sget-object v0, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->kt:Lcom/miui/internal/util/async/ConcurrentWeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/util/async/ConcurrentWeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method
