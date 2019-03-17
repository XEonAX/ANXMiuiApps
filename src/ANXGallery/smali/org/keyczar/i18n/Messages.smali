.class public Lorg/keyczar/i18n/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# static fields
.field private static stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/keyczar/i18n/Messages$1;

    invoke-direct {v0}, Lorg/keyczar/i18n/Messages$1;-><init>()V

    sput-object v0, Lorg/keyczar/i18n/Messages;->stringMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static changeLocale(Ljava/util/Locale;)V
    .locals 0
    .annotation build Lorg/keyczar/annotations/ForTesting;
    .end annotation

    .prologue
    .line 65
    return-void
.end method

.method public static varargs getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/keyczar/i18n/Messages;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-object p0

    :cond_0
    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
