.class public final enum Lcom/google/firebase/firestore/core/FieldFilter$Operator;
.super Ljava/lang/Enum;
.source "FieldFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/FieldFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/FieldFilter$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum GREATER_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum GREATER_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum LESS_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum LESS_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

.field public static final enum NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 31
    new-instance v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v1, 0x0

    const-string v2, "<"

    const-string v3, "LESS_THAN"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 32
    new-instance v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v2, 0x1

    const-string v3, "<="

    const-string v4, "LESS_THAN_OR_EQUAL"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->LESS_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 33
    new-instance v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v3, 0x2

    const-string v4, "=="

    const-string v5, "EQUAL"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 34
    new-instance v3, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v4, 0x3

    const-string v5, "!="

    const-string v6, "NOT_EQUAL"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 35
    new-instance v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v5, 0x4

    const-string v6, ">"

    const-string v7, "GREATER_THAN"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 36
    new-instance v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v6, 0x5

    const-string v7, ">="

    const-string v8, "GREATER_THAN_OR_EQUAL"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->GREATER_THAN_OR_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 37
    new-instance v6, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v7, 0x6

    const-string v8, "array_contains"

    const-string v9, "ARRAY_CONTAINS"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 38
    new-instance v7, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/4 v8, 0x7

    const-string v9, "array_contains_any"

    const-string v10, "ARRAY_CONTAINS_ANY"

    invoke-direct {v7, v10, v8, v9}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 39
    new-instance v8, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/16 v9, 0x8

    const-string v10, "in"

    const-string v11, "IN"

    invoke-direct {v8, v11, v9, v10}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 40
    new-instance v9, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    const/16 v10, 0x9

    const-string v11, "not_in"

    const-string v12, "NOT_IN"

    invoke-direct {v9, v12, v10, v11}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 30
    filled-new-array/range {v0 .. v9}, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->$VALUES:[Lcom/google/firebase/firestore/core/FieldFilter$Operator;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->text:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->$VALUES:[Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->text:Ljava/lang/String;

    return-object v0
.end method
