Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F2F9BCB0
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 11:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGHkKXa9qCLFZIzjL4f0/POxm6x/8xJzm2p/XdgmOAU=; b=cQRfLenUKDJ62v
	P2FjSue104QwO7lWZKCblyBDzwy/5IgL3yCEqw0+YJU31BYvE1NBJRoYShr/NWtkIVyKM9tYxvY7q
	GaYLs5i+1BLQ3uCk9tPw902A+gB41BFcqu44FjWK5/NDC0QuB5I+RUyLAPzXb0pHbgZHG0iH6rx91
	AelYTnx2c6Y1ecqGx5KG3KTMkw6K6LYPF01vr6kijhA1DrTfMVtjeq1op16qAtBGaPQxf7D6Pflma
	U3setpsgW35ZKgUb70LYTFBlgFQbcP4scxpQRQ6ND9owD3SxWpLcj4jf8Ubf+yB4oVwzOw7xd4ej2
	vji4O0TG5K5CKPUybbYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1SAF-0007IC-5h; Sat, 24 Aug 2019 09:16:51 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1SAA-0007Hc-KM
 for linux-mediatek@lists.infradead.org; Sat, 24 Aug 2019 09:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566638202;
 bh=dtLfsaSl7Ne8XmXHgKbpdedLE6ZkO5lEvNYvK9hBOCs=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:Reply-to:To:
 From;
 b=PniIzrVpXn9dz+fuXeL6KpezbHV8VHFJTkbj3vrLo3dFIJomzvn7hxMbosxE/JmLU
 P6+fx5zEWeQs4CZUc2/7TgYVT/cYJI1f0sQ/yzcbx6np2wZL3q2dDbRP51f0B4QQC3
 jaebUdfIMmdpwqT+1RstEgAZ47LWOkvky0oEwl3c=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-bq ([37.60.0.191]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M3lc9-1i1jPW3fUp-000xIP; Sat, 24
 Aug 2019 11:16:41 +0200
Date: Sat, 24 Aug 2019 11:16:39 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <725410A8-8B5B-472A-8904-57B912475783@public-files.de>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-3-git-send-email-hsin-hsiung.wang@mediatek.com>
 <trinity-1f82bff1-535e-47cd-9a2f-8faccb56e356-1566562433314@3c-app-gmx-bs11>
 <e8a918ab-3e7a-b487-db77-df28d56518ce@gmail.com>
 <0A87F427-2D81-412A-9549-09A51A021799@public-files.de>
 <b5a21908-faee-17d1-ce26-99b941c0fa70@gmail.com>
 <725410A8-8B5B-472A-8904-57B912475783@public-files.de>
MIME-Version: 1.0
Subject: Re: [BUG] [PATCH v5 02/10] mfd: mt6397: extract irq related code from
 core driver
To: linux-mediatek@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <7857C586-C595-40F0-A28B-FB44AF416E80@public-files.de>
X-Provags-ID: V03:K1:BgABY4Ty2fo39D6nnfFN/AsUSV6hbdMn8MOoBNrYGzOrnU6IuLL
 2rZSuQcKch5PmlssxgpTlpkAeGm6lPFffhTLqEkooirwcl5YKPVOxoVzVvv8QwQA6LKiVrW
 lGKJTUFAXwu5+g8JmmkXoPloL0h9rYu/cT5HIZla+DE032LSZZoR4jUUnt+zXpbYjBPI9A9
 54nfjVwuLXP8EQupxmTmg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:K8nRFg38tjw=:VWMIiIup6FZuDgNv860zar
 OOHgCcgrTY0cGa8/QHAgZN7xEsD8ynHKRCkjixGwSpvwxbZsNRenS43JY/6MtlBY3/H0IBTZ1
 NJsn6CdQLxQn8zDqYqeFs8pxY8KSqIYjW+3F6cLP5jJjrKJyMoKUWrA1EyWE8dgCNkkuE+j8R
 vv3toc+CK1jmVcp+RqywTqNcJy3w92ygyLUCJNLyFXzRr8uKpp31Bu+J9fMpBgO/McHJdhX7S
 zRn/DYWuxJuvrT0DyZPba6E+juwmG2SUopus8kGZaHxScSdjXTeEHbQHjnsmBukJoGGlrwloM
 +BrvzZuOcuPTrPyLAf+K2cjsNwNRraLk8Dsh/lvxQBLB0KKHvqCZLOq/T7Fp/iiGGFEa88vFN
 wd+Nx8MAyZoi5A6b/s0IIWSughQ5Cs5dRim9OwXw+XWZVDR+22beUC6t3Rcueqp/h1rdP8sZb
 W6WPdGbt/okSCfIRSKn8+lh1Gc7omPecEqKuoVzxTYXhQVpK2GVi/0wfGxMrBpyZabd/+5Lro
 f9XX4JFh3H9gX/6cEvtBlA2ouRxM1TSW282JG9Jx+KznaW/Jayrm09O1gBgKHpf1cM7k3oZcZ
 sIJs5PXCkKlmHbwEXC3ATD9054ehkndy8L7IACIVC8EkILmH/HFIRRScZORwG3Y+yEXQwj7Nt
 DI+DwN4k5QTW+Dro0syL4VT/w7Mw1Ttogd7/qw58SskKk0MBO5sjY+K4shXJsBoy1avT2Vfg1
 MUMCwvXwfl4CI1H36I0aXsA3GK2y3MJv/VQVtmaitD4u5ZSC2g4rOfw7harPfzwkDzDLmUtjz
 b2LZG1ZLpVKz14zFuk3jiW7YBAY/SpgrYmNdxpX4f3p8bWJN0gsQCvNBDhI5OE1UPdYMNCUIL
 AxLej/SE6fqxhFerdu0hPXoo7N9cYyd0fwSeBxLZJQLyW+xMdtJnP23J3TF/KSVyJJPNDf9oE
 V4LaO7NeioMw5yDlnjGOM90aN5lJVv7agVOBLInJNB2BkIHN1xp/MznyvM8I7+VRopw4yhHyA
 uw3jR8+fZEsU8U+8CycVyTC8weaInoAR/H0oznTF5qpBuEnEKl3RVpSmOJOJCRe2WI8dDBlLY
 /+9vOH9CcYgMGZ34aP86lhHLCv7crO3abYlnRm0h66cVBCdbOrvXY8ZqPa7NlcsOQReqHXCmA
 5Sjys=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_021647_006465_5B32E3B0 
X-CRM114-Status: UNSURE (   2.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Reply-To: frank-w@public-files.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Sorry wanted to ask Matthias off-list. Just ignore it.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
