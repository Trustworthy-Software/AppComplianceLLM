.class Lcom/google/firebase/firestore/FieldValue$ArrayRemoveFieldValue;
.super Lcom/google/firebase/firestore/FieldValue;
.source "FieldValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/FieldValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayRemoveFieldValue"
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/FieldValue;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/firebase/firestore/FieldValue$ArrayRemoveFieldValue;->elements:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/firebase/firestore/FieldValue$ArrayRemoveFieldValue;->elements:Ljava/util/List;

    return-object v0
.end method

.method getMethodName()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "FieldValue.arrayRemove"

    return-object v0
.end method
