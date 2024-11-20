.class Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;
.super Lcom/google/firebase/firestore/FieldValue;
.source "FieldValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/FieldValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumericIncrementFieldValue"
.end annotation


# instance fields
.field private final operand:Ljava/lang/Number;


# direct methods
.method constructor <init>(Ljava/lang/Number;)V
    .locals 0
    .param p1, "operand"    # Ljava/lang/Number;

    .line 91
    invoke-direct {p0}, Lcom/google/firebase/firestore/FieldValue;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;->operand:Ljava/lang/Number;

    .line 93
    return-void
.end method


# virtual methods
.method getMethodName()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, "FieldValue.increment"

    return-object v0
.end method

.method getOperand()Ljava/lang/Number;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;->operand:Ljava/lang/Number;

    return-object v0
.end method
