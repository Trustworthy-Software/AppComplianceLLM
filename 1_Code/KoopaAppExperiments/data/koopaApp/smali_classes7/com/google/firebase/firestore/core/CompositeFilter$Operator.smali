.class public final enum Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
.super Ljava/lang/Enum;
.source "CompositeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/CompositeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/CompositeFilter$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

.field public static final enum AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

.field public static final enum OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    const/4 v1, 0x0

    const-string v2, "and"

    const-string v3, "AND"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    .line 29
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    const/4 v2, 0x1

    const-string v3, "or"

    const-string v4, "OR"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    .line 27
    filled-new-array {v0, v1}, [Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->$VALUES:[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->text:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .locals 1

    .line 27
    sget-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->$VALUES:[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->text:Ljava/lang/String;

    return-object v0
.end method
