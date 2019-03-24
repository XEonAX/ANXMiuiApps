.class public Lcom/miui/internal/variable/v16/Android_View_View_class_common;
.super Lcom/miui/internal/variable/Android_View_View_class;
.source "SourceFile"


# static fields
.field private static final lH:Lmiui/reflect/Field;

.field private static final lI:Lmiui/reflect/Field;

.field private static final lJ:Lmiui/reflect/Field;

.field private static final lK:Lmiui/reflect/Field;

.field private static final lL:Lmiui/reflect/Field;

.field private static final lM:Lmiui/reflect/Field;

.field private static final lN:Lmiui/reflect/Field;

.field private static final lO:Lmiui/reflect/Method;

.field private static final lP:Lmiui/reflect/Method;

.field private static lQ:Lmiui/reflect/Method;

.field private static final lR:Lmiui/reflect/Field;

.field private static final lS:Lmiui/reflect/Field;

.field private static lT:Ljava/lang/Class;

.field private static lU:Lmiui/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const-class v0, Landroid/view/View;

    const-string v1, "mPrivateFlags"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lH:Lmiui/reflect/Field;

    .line 28
    const-class v0, Landroid/view/View;

    const-string v1, "mOldWidthMeasureSpec"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lI:Lmiui/reflect/Field;

    .line 31
    const-class v0, Landroid/view/View;

    const-string v1, "mOldHeightMeasureSpec"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lJ:Lmiui/reflect/Field;

    .line 34
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollX"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lK:Lmiui/reflect/Field;

    .line 36
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollY"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lL:Lmiui/reflect/Field;

    .line 38
    const-class v0, Landroid/view/View;

    const-string v1, "mLeft"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lM:Lmiui/reflect/Field;

    .line 40
    const-class v0, Landroid/view/View;

    const-string v1, "mRight"

    const-string v2, "I"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lN:Lmiui/reflect/Field;

    .line 42
    const-class v0, Landroid/view/View;

    const-string v1, "getContextMenuInfo"

    const-string v2, "()Landroid/view/ContextMenu$ContextMenuInfo;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lO:Lmiui/reflect/Method;

    .line 45
    const-class v0, Landroid/view/View;

    const-string v1, "onCreateContextMenu"

    const-string v2, "(Landroid/view/ContextMenu;)V"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lP:Lmiui/reflect/Method;

    .line 50
    const-class v0, Landroid/view/View;

    const-string v1, "mListenerInfo"

    const-string v2, "Landroid/view/View$ListenerInfo;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lR:Lmiui/reflect/Field;

    .line 53
    const-class v0, Landroid/view/View;

    const-string v1, "mKeyedTags"

    const-string v2, "Landroid/util/SparseArray;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lS:Lmiui/reflect/Field;

    .line 60
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "createSnapshot"

    const-string v2, "(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;"

    invoke-static {v0, v1, v2}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lQ:Lmiui/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lQ:Lmiui/reflect/Method;

    .line 65
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/miui/internal/variable/Android_View_View_class;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .line 177
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lH:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception p1

    .line 179
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.view.View.mPrivateFlags"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :goto_0
    return-void
.end method

.method private b(Landroid/view/View;)I
    .locals 2

    .line 168
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lH:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 169
    :catch_0
    move-exception p1

    .line 170
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.view.View.mPrivateFlags"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/view/View;)I
    .locals 2

    .line 185
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lI:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 186
    :catch_0
    move-exception p1

    .line 187
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.view.View.mOldWidthMeasureSpec"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    const/4 p1, 0x0

    return p1
.end method

.method private d(Landroid/view/View;)I
    .locals 2

    .line 194
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lJ:Lmiui/reflect/Field;

    invoke-virtual {v0, p1}, Lmiui/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 195
    :catch_0
    move-exception p1

    .line 196
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v0

    const-string v1, "android.view.View.mOldHeightMeasureSpec"

    invoke-virtual {v0, v1, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected attachSpecialMethods()V
    .locals 0

    .line 87
    return-void
.end method

.method public buildProxy()V
    .locals 2

    .line 69
    const-string v0, "refreshDrawableState"

    const-string v1, "()V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 70
    const-string v0, "onCreateDrawableState"

    const-string v1, "(I)[I"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 71
    const-string v0, "createContextMenu"

    const-string v1, "(Landroid/view/ContextMenu;)V"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 72
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachConstructor(Ljava/lang/String;)J

    .line 73
    const-string v0, "(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-virtual {p0, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachConstructor(Ljava/lang/String;)J

    .line 74
    invoke-virtual {p0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->attachSpecialMethods()V

    .line 75
    return-void
.end method

.method public createSnapshot(Landroid/view/View;Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 4

    .line 256
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lQ:Lmiui/reflect/Method;

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lQ:Lmiui/reflect/Method;

    const-class v1, Landroid/view/View;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v2, p2

    invoke-virtual {v0, v1, p1, v2}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 259
    :catch_0
    move-exception p1

    .line 260
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string p3, "invoke setLayoutInScreenEnabled failed"

    invoke-virtual {p2, p3, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected handle()V
    .locals 8

    .line 79
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handleRefreshDrawableState(JLandroid/view/View;)V

    .line 80
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handleOnCreateDrawableState(JLandroid/view/View;I)[I

    .line 81
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handleCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V

    .line 82
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method protected handleCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V
    .locals 4

    .line 130
    instance-of v0, p4, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_3

    .line 131
    sget-object p1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lT:Ljava/lang/Class;

    if-nez p1, :cond_0

    .line 133
    :try_start_0
    const-string p1, "android.view.View$ListenerInfo"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lT:Ljava/lang/Class;

    .line 134
    sget-object p1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lT:Ljava/lang/Class;

    const-string p2, "mOnCreateContextMenuListener"

    const-string v0, "Landroid/view/View$OnCreateContextMenuListener;"

    invoke-static {p1, p2, v0}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object p1

    sput-object p1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lU:Lmiui/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 136
    :catch_0
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    return-void

    .line 142
    :cond_0
    :goto_0
    sget-object p1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lO:Lmiui/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v1}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ContextMenu$ContextMenuInfo;

    .line 143
    move-object p2, p4

    check-cast p2, Lcom/miui/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p2, p1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 144
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lP:Lmiui/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v0

    invoke-virtual {v1, v2, p3, v3}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lR:Lmiui/reflect/Field;

    invoke-virtual {v0, p3}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    sget-object v1, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lU:Lmiui/reflect/Field;

    invoke-virtual {v1, v0}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnCreateContextMenuListener;

    .line 148
    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v0, p4, p3, p1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 152
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/miui/internal/view/menu/ContextMenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 153
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p4}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 156
    :cond_2
    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->originalCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V

    .line 159
    :goto_1
    return-void
.end method

.method protected handleOnCreateDrawableState(JLandroid/view/View;I)[I
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->originalOnCreateDrawableState(JLandroid/view/View;I)[I

    move-result-object p1

    .line 101
    invoke-virtual {p0, p3, p1, p4}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->onCreateDrawableState(Landroid/view/View;[II)[I

    move-result-object p1

    return-object p1
.end method

.method protected handleRefreshDrawableState(JLandroid/view/View;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->originalRefreshDrawableState(JLandroid/view/View;)V

    .line 91
    invoke-static {p3}, Lcom/miui/internal/util/TaggingDrawableHelper;->onDrawableStateChange(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method protected handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 120
    invoke-virtual/range {p0 .. p5}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    invoke-static {p3, p5}, Lcom/miui/internal/util/TaggingDrawableHelper;->initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method protected handle_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 110
    invoke-virtual/range {p0 .. p6}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    invoke-static {p3, p5}, Lcom/miui/internal/util/TaggingDrawableHelper;->initViewSequenceStates(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method protected originalCreateContextMenu(JLandroid/view/View;Landroid/view/ContextMenu;)V
    .locals 0

    .line 162
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_View_class.originalCreateContextMenu(long, View, ContextMenu)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalOnCreateDrawableState(JLandroid/view/View;I)[I
    .locals 0

    .line 105
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_View_class.originalOnCreateDrawableState(long, View, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected originalRefreshDrawableState(JLandroid/view/View;)V
    .locals 0

    .line 95
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_View_class.originalRefreshDrawableState(long, View)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 125
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context, AttributeSet)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected original_init_(JLandroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 115
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "com.miui.internal.variable.v16.Android_View_View_class.original_init_(long, View, Context, AttributeSet, int)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public relayout(Landroid/view/View;)V
    .locals 5

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->b(Landroid/view/View;)I

    move-result v0

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->forceLayout()V

    .line 206
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->c(Landroid/view/View;)I

    move-result v1

    .line 207
    invoke-direct {p0, p1}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->d(Landroid/view/View;)I

    move-result v2

    .line 208
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->a(Landroid/view/View;I)V

    .line 212
    :cond_0
    return-void
.end method

.method public setImportantForAccessibilityNoHideDescendants(Landroid/view/View;)V
    .locals 0

    .line 252
    return-void
.end method

.method public setLeftDirectly(Landroid/view/View;I)V
    .locals 1

    .line 235
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lM:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception p1

    .line 237
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.view.View.mScrollY"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    :goto_0
    return-void
.end method

.method public setRightDirectly(Landroid/view/View;I)V
    .locals 1

    .line 244
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lN:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_0

    .line 245
    :catch_0
    move-exception p1

    .line 246
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.view.View.mScrollY"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    :goto_0
    return-void
.end method

.method public setScrollXDirectly(Landroid/view/View;I)V
    .locals 1

    .line 217
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lK:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    goto :goto_0

    .line 218
    :catch_0
    move-exception p1

    .line 219
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.view.View.mScrollX"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    :goto_0
    return-void
.end method

.method public setScrollYDirectly(Landroid/view/View;I)V
    .locals 1

    .line 226
    :try_start_0
    sget-object v0, Lcom/miui/internal/variable/v16/Android_View_View_class_common;->lL:Lmiui/reflect/Field;

    invoke-virtual {v0, p1, p2}, Lmiui/reflect/Field;->set(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception p1

    .line 228
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object p2

    const-string v0, "android.view.View.mScrollY"

    invoke-virtual {p2, v0, p1}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    :goto_0
    return-void
.end method
