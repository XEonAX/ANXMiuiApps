.class Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;
.super Ljava/lang/Object;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/PhotoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentData"
.end annotation


# instance fields
.field final gestureTag:Ljava/lang/String;

.field final menu:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/editor/photo/app/MenuFragment;",
            ">;"
        }
    .end annotation
.end field

.field final menuTag:Ljava/lang/String;

.field final renderTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/miui/gallery/editor/photo/core/Effect;)V
    .locals 2
    .param p2, "effect"    # Lcom/miui/gallery/editor/photo/core/Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/miui/gallery/editor/photo/app/MenuFragment;",
            ">;",
            "Lcom/miui/gallery/editor/photo/core/Effect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "_class":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/gallery/editor/photo/app/MenuFragment;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->menu:Ljava/lang/Class;

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/miui/gallery/editor/photo/core/Effect;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":menu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->menuTag:Ljava/lang/String;

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/miui/gallery/editor/photo/core/Effect;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":render"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->renderTag:Ljava/lang/String;

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/miui/gallery/editor/photo/core/Effect;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":gesture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->gestureTag:Ljava/lang/String;

    .line 993
    return-void
.end method


# virtual methods
.method public newMenu()Lcom/miui/gallery/editor/photo/app/MenuFragment;
    .locals 2

    .prologue
    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/PhotoEditor$FragmentData;->menu:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/editor/photo/app/MenuFragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v1, "PhotoEditor"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1000
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1001
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PhotoEditor"

    invoke-static {v1, v0}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1003
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
