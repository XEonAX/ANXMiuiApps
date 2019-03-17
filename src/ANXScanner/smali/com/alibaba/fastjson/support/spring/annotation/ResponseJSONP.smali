.class public interface abstract annotation Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;
.super Ljava/lang/Object;
.source "ResponseJSONP.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/alibaba/fastjson/support/spring/annotation/ResponseJSONP;
        callback = "callback"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/springframework/web/bind/annotation/ResponseBody;
.end annotation


# virtual methods
.method public abstract callback()Ljava/lang/String;
.end method
