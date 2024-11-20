.class Lcom/google/firebase/firestore/FieldValue$ArrayUnionFieldValue;
.super Lcom/google/firebase/firestore/FieldValue;
.source "FieldValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/FieldValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayUnionFieldValue"
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

    .line 55
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/FieldValue;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/firebase/firestore/FieldValue$ArrayUnionFieldValue;->elements:Ljava/util/List;

    .line 57
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

    .line 65
    iget-object v0, p0, Lcom/google/firebase/firestore/FieldValue$ArrayUnionFieldValue;->elements:Ljava/util/List;

    return-object v0
.end method

.method getMethodName()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "FieldValue.arrayUnion"

    return-object v0
.end method
