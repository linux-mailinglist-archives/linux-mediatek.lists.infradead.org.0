Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CB61DD25E
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 May 2020 17:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bej5//EinkTcMKAHodM9eDD0iYE8qupwxkWBlIeP9qw=; b=KXesBExAtb/g6c
	qT5ASiiB9G8e9J9CA0aPIebDrp2yYxLykX7sR+uK+c4LQSuHygn4P/963hW8mAJnrUM+GYLYMABMM
	GmL7rOZ8shL9QfykOxmFO3SP0Bsrr0wV/KyIqdhGiYM0Zg+PRgH3cGuo1o1Lph4xL+cMuOjwcVLIs
	Rj6chmo/+Qvk1J2wjpTozvbPZdM/kA/QnZcWDJkl/QCvAxZiyzuPmd9ztuN4TBxJXPh3rn62rYr0e
	vAqrvjhiM9BLI31EIlfE6jfTkjjaIc4orS//RJJehM6X8t10Yoav31g6HMeFJ6jnUy0namPcD0/3+
	lN37AAhu9u6ofF+IDPnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnUm-0007qk-IM; Thu, 21 May 2020 15:52:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnUi-0007qO-RG
 for linux-mediatek@lists.infradead.org; Thu, 21 May 2020 15:52:30 +0000
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 28BE520849
 for <linux-mediatek@lists.infradead.org>; Thu, 21 May 2020 15:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590076348;
 bh=h2AUaH4aXHpccCQhYPuCaSjyjozytmLuDN9MpHk9uAM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=P+44JUYXp74xl52H9qZMibt93w7fm0My+qOb69Jq83i/ssBrQ7QN7Iz6c12Wdxw4y
 hj0BFJhE35dYsuSF0Gaii+4BO3amtmPX/rcIshbwfh76e/nCyRgesYpfdgxzm9U62k
 o3TUTD85NlbAeeGVW/qIS9l2OPHfMKQpFviS3qJ8=
Received: by mail-ed1-f44.google.com with SMTP id f13so6346236edr.13
 for <linux-mediatek@lists.infradead.org>; Thu, 21 May 2020 08:52:28 -0700 (PDT)
X-Gm-Message-State: AOAM531LbGf90HmEpZAFsJqctJv2W4QWhsGfDCS9l/pM1dPTGRQlcA21
 hyEl5nJh8NtiuK6JD5ERsn+rA8fVy/c1uxEWEA==
X-Google-Smtp-Source: ABdhPJxoiAfY3EqoTUIgSN9uajnmVi63rqA+DLND8x6vbz3lwCQqSeZV1VZDDqNPOfQOaHKUOkbcditLoeQVCQlQWVM=
X-Received: by 2002:a05:6402:1775:: with SMTP id
 da21mr8334701edb.271.1590076346559; 
 Thu, 21 May 2020 08:52:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAAOTY_8tz9nNbCHFJhk9xX8fm9Jd8ETcdNCQfE31AOjZLpNKog@mail.gmail.com>
 <CAPM=9txm_fdy_+Kg=cdXe5SosbYBoXHtsDWYMFm2WQh1QtC_YQ@mail.gmail.com>
In-Reply-To: <CAPM=9txm_fdy_+Kg=cdXe5SosbYBoXHtsDWYMFm2WQh1QtC_YQ@mail.gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Thu, 21 May 2020 23:52:15 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9UYVZJipizdHoHiReaW4e4qbcKWygs0wVNfYQHR49txg@mail.gmail.com>
Message-ID: <CAAOTY_9UYVZJipizdHoHiReaW4e4qbcKWygs0wVNfYQHR49txg@mail.gmail.com>
Subject: Re: [GIT PULL v2] mediatek drm next for 5.8
To: Dave Airlie <airlied@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_085228_916247_BB0CFC44 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Jitao Shi <jitao.shi@mediatek.com>,
 David Airlie <airlied@linux.ie>, Bernard Zhao <bernard@vivo.com>,
 YueHaibing <yuehaibing@huawei.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Anand K Mistry <amistry@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksIERhdmU6CgpEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+IOaWvCAyMDIw5bm0Neac
iDIw5pelIOmAseS4iSDkuIvljYgxOjQ05a+r6YGT77yaCj4KPiBPbiBNb24sIDE4IE1heSAyMDIw
IGF0IDEwOjA2LCBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gSGksIERhdmUgJiBEYW5pZWw6Cj4gPgo+ID4gVGhpcyBpbmNsdWRlIGRwaSBwaW4g
bW9kZSBzd2FwLCBjb25maWcgbWlwaV90eCBjdXJyZW50IGFuZCBpbXBlZGFuY2UsCj4gPiBhbmQg
c29tZSBmaXh1cC4gSSBkcm9wIGRybV9icmlkZ2UgcGF0Y2hlcyBpbiB0aGlzIHZlcnNpb24uCj4g
Pgo+ID4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA4ZjNkOWYzNTQyODY3NDVj
NzUxMzc0ZjVmMWZjYWZlZTZiM2YzMTM2Ogo+ID4gICBMaW51eCA1LjctcmMxICgyMDIwLTA0LTEy
IDEyOjM1OjU1IC0wNzAwKQo+ID4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkg
YXQ6Cj4gPiAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L2NodW5rdWFuZy5odS9saW51eC5naXQKPiA+IHRhZ3MvbWVkaWF0ZWstZHJtLW5leHQtNS44Cj4g
PiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gMDA3ZDI3NGEwMTdiYjRlMmVmN2I5MjJj
MmY1NGY0MGNmMjA3MzY2NDoKPgo+IERpZCB5b3UgZWRpdCB0aGlzIGJ5IGhhbmQgb3IgcGFzcyBp
dCB0aHJvdWdoIHNvbWUgbWFpbHNlcnZlciB0aGF0Cj4gY2hld2VkIGl0IHVwLCBJIGhhZCB0byBy
ZWNvbnN0cnVjdCB0aGlzIHB1bGwgZnJvbSB0aGUgYWJvdmUgYml0cywgSSd2ZQo+IG5vIGlkZWEg
d2h5IGl0J3Mgc28gbWVzc2VkIHVwIGluIHRoZSBmaXJzdCBwbGFjZS4KClRoZSBpZGVhIGlzIHRo
YXQgZ21haWwgd291bGQgd3JhcCB3b3Jkcywgc28gSSBjaGFuZ2UgdG8gdXNlICdnaXQKc2VuZC1l
bWFpbCcgaW4gdjMuCgpSZWdhcmRzLApDaHVuLUt1YW5nLgoKPgo+IERhdmUuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1tZWRpYXRlayBtYWls
aW5nIGxpc3QKTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1lZGlhdGVrCg==
