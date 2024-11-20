.class Lcom/google/firebase/firestore/FieldValue$DeleteFieldValue;
.super Lcom/google/firebase/firestore/FieldValue;
.source "FieldValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/FieldValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeleteFieldValue"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/firebase/firestore/FieldValue;-><init>()V

    return-void
.end method


# virtual methods
.method getMethodName()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "FieldValue.delete"

    return-object v0
.end method
