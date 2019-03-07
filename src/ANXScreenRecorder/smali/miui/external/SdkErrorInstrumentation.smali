.class final Lmiui/external/SdkErrorInstrumentation;
.super Landroid/app/Instrumentation;
.source "SdkErrorInstrumentation.java"

# interfaces
.implements Lmiui/external/SdkConstants;


# instance fields
.field private mError:Lmiui/external/SdkConstants$SdkError;


# direct methods
.method private constructor <init>(Lmiui/external/SdkConstants$SdkError;)V
    .locals 0
    .param p1, "error"    # Lmiui/external/SdkConstants$SdkError;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 28
    iput-object p1, p0, Lmiui/external/SdkErrorInstrumentation;->mError:Lmiui/external/SdkConstants$SdkError;

    .line 29
    return-void
.end method

.method private static getDeclaredField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 9
    .param p1, "holder"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 84
    .local v3, "fields":[Ljava/lang/reflect/Field;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 85
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v3, v5

    .line 86
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    if-ne v7, p2, :cond_0

    .line 127
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-object v2

    .line 91
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 85
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 101
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_1
    if-eqz p3, :cond_3

    .line 102
    array-length v6, v3

    move v5, v4

    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v2, v3, v5

    .line 103
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_1

    .line 102
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 110
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_3
    const/4 v0, 0x0

    .line 111
    .local v0, "candidate":Ljava/lang/reflect/Field;
    if-nez p4, :cond_9

    .line 112
    array-length v5, v3

    :goto_4
    if-ge v4, v5, :cond_7

    aget-object v2, v3, v4

    .line 113
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, p4, :cond_4

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 114
    :cond_4
    if-nez v0, :cond_6

    .line 115
    move-object v0, v2

    .line 112
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 117
    :cond_6
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More than one matched field found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 118
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_7
    if-nez v0, :cond_8

    .line 123
    new-instance v4, Ljava/lang/NoSuchFieldException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such field found of value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_8
    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_9
    move-object v2, v0

    .line 127
    goto/16 :goto_1
.end method

.method static handleSdkError(Lmiui/external/SdkConstants$SdkError;)V
    .locals 14
    .param p0, "error"    # Lmiui/external/SdkConstants$SdkError;

    .prologue
    const/4 v10, 0x0

    .line 36
    :try_start_0
    const-string v9, "android.app.ActivityThread"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    .local v0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "currentActivityThread"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    .line 39
    invoke-virtual {v0, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v9, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 41
    .local v1, "at":Ljava/lang/Object;
    const-string v9, "getInstrumentation"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    .line 43
    invoke-virtual {v0, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    .line 44
    invoke-virtual {v9, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Instrumentation;

    .line 45
    .local v6, "instrumentation":Landroid/app/Instrumentation;
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v1, v6, v9, v11}, Lmiui/external/SdkErrorInstrumentation;->getDeclaredField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 48
    .local v5, "instField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Instrumentation;

    .line 49
    .local v8, "oldInst":Landroid/app/Instrumentation;
    new-instance v7, Lmiui/external/SdkErrorInstrumentation;

    invoke-direct {v7, p0}, Lmiui/external/SdkErrorInstrumentation;-><init>(Lmiui/external/SdkConstants$SdkError;)V

    .line 51
    .local v7, "newInst":Landroid/app/Instrumentation;
    const-class v2, Landroid/app/Instrumentation;

    .line 52
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    array-length v12, v11

    move v9, v10

    :goto_1
    if-ge v9, v12, :cond_0

    aget-object v4, v11, v9

    .line 54
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 55
    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v7, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 57
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "at":Ljava/lang/Object;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "instField":Ljava/lang/reflect/Field;
    .end local v6    # "instrumentation":Landroid/app/Instrumentation;
    .end local v7    # "newInst":Landroid/app/Instrumentation;
    .end local v8    # "oldInst":Landroid/app/Instrumentation;
    :goto_2
    return-void

    .line 61
    :catch_0
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "application"    # Landroid/app/Application;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "info"    # Landroid/content/pm/ActivityInfo;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Landroid/app/Activity;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkError"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    const-class p1, Lmiui/external/SdkErrorActivity;

    .line 138
    if-nez p5, :cond_0

    .line 139
    new-instance p5, Landroid/content/Intent;

    .end local p5    # "intent":Landroid/content/Intent;
    invoke-direct {p5}, Landroid/content/Intent;-><init>()V

    .line 141
    .restart local p5    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v0, "com.miui.sdk.error"

    iget-object v1, p0, Lmiui/external/SdkErrorInstrumentation;->mError:Lmiui/external/SdkConstants$SdkError;

    invoke-virtual {p5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    :cond_1
    invoke-super/range {p0 .. p10}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 151
    const-string v0, "SdkError"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    const-class v0, Lmiui/external/SdkErrorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 153
    if-nez p3, :cond_0

    .line 154
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "intent":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 156
    .restart local p3    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v0, "com.miui.sdk.error"

    iget-object v1, p0, Lmiui/external/SdkErrorInstrumentation;->mError:Lmiui/external/SdkConstants$SdkError;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
