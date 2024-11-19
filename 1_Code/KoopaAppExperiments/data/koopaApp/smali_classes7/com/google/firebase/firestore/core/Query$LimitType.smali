.class public final enum Lcom/google/firebase/firestore/core/Query$LimitType;
.super Ljava/lang/Enum;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LimitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/Query$LimitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/Query$LimitType;

.field public static final enum LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

.field public static final enum LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Lcom/google/firebase/firestore/core/Query$LimitType;

    const-string v1, "LIMIT_TO_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/Query$LimitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    .line 41
    new-instance v1, Lcom/google/firebase/firestore/core/Query$LimitType;

    const-string v2, "LIMIT_TO_LAST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/core/Query$LimitType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    .line 39
    filled-new-array {v0, v1}, [Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/Query$LimitType;->$VALUES:[Lcom/google/firebase/firestore/core/Query$LimitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/Query$LimitType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/Query$LimitType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/Query$LimitType;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/firebase/firestore/core/Query$LimitType;->$VALUES:[Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/Query$LimitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/Query$LimitType;

    return-object v0
.end method
