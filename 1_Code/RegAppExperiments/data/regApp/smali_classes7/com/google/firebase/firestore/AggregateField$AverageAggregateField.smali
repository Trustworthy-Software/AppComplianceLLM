.class public Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;
.super Lcom/google/firebase/firestore/AggregateField;
.source "AggregateField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/AggregateField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AverageAggregateField"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/FieldPath;)V
    .locals 2
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;

    .line 210
    const-string v0, "average"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/firestore/AggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/String;Lcom/google/firebase/firestore/AggregateField$1;)V

    .line 211
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/AggregateField$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "x1"    # Lcom/google/firebase/firestore/AggregateField$1;

    .line 208
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;-><init>(Lcom/google/firebase/firestore/FieldPath;)V

    return-void
.end method
