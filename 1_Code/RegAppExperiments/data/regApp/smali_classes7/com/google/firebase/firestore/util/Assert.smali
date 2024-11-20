.class public Lcom/google/firebase/firestore/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;
    .locals 2
    .param p0, "messageFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0, p1}, Lcom/google/firebase/firestore/util/Assert;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static varargs fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;
    .locals 1
    .param p0, "cause"    # Ljava/lang/Throwable;
    .param p1, "messageFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 77
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/util/Assert;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/util/ApiUtil;->newAssertionError(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "messageFormat"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNAL ASSERTION FAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "condition"    # Z
    .param p1, "messageFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 30
    if-eqz p0, :cond_0

    .line 33
    return-void

    .line 31
    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public static varargs hardAssertNonNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "messageFormat"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 46
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 49
    return-object p0

    .line 47
    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method
