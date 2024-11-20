.class public abstract Lcom/google/firebase/firestore/model/FieldIndex$Segment;
.super Ljava/lang/Object;
.source "FieldIndex.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/FieldIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .locals 1
    .param p0, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p1, "kind"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    .line 81
    new-instance v0, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/model/AutoValue_FieldIndex_Segment;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/FieldIndex$Segment;)I
    .locals 3
    .param p1, "other"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 92
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/FieldPath;->compareTo(Lcom/google/firebase/firestore/model/BasePath;)I

    move-result v0

    .line 93
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    return v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->compareTo(Lcom/google/firebase/firestore/model/FieldIndex$Segment;)I

    move-result p1

    return p1
.end method

.method public abstract getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;
.end method

.method public abstract getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;
.end method
