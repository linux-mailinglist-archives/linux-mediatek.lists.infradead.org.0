Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D47D8CF666
	for <lists+linux-mediatek@lfdr.de>; Tue,  8 Oct 2019 11:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjENQcXxI1FViZEk/BMADgOYsLcysPRXXydqmkoO1ow=; b=YS8gPBa1Gk6XkV
	7lvxjnQQbVTGny4MqE5tNFpYcUp8GI7tTTdlwE+s0eOP8z9voZ/sgd7DuvgTge0qp3YSU+/2EeUXf
	F/SjmULLMY4/4M/zJ9fBnhpffucG5Iu/l2aDFmMXQtBLrdJwdl7R8gsaqJfysM2sIDQ6kCFvL791O
	QAe+dg+cUXmt0SoK2wwnVuLU7Oofuu6WpZsAfnDEGmPUMN0Jz1MrbAA9I1HIMqfbfHmZJ6PLxX48T
	3SJXNFhM4OSOIYU8A9pvd80K94+rpIVlqdr/KDQE271/4+gm0EonRlU9Qd+gx/P+rh1kPHOpzs50m
	HtyVoJbSJWiCK0mcJ+rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHm5g-0001Ns-V6; Tue, 08 Oct 2019 09:47:36 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHm5d-0001MU-4I
 for linux-mediatek@lists.infradead.org; Tue, 08 Oct 2019 09:47:34 +0000
Received: by mail-qk1-x742.google.com with SMTP id y189so16052305qkc.3
 for <linux-mediatek@lists.infradead.org>; Tue, 08 Oct 2019 02:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=qLgfnJa8TF+fqJn6Csm2aNbaRpOd4zDzxzOPf12HbGU=;
 b=cXYZ/yJKZHxhLdFc+J/7aqzW3aWMwrEzbFfkVK6b2STx6QHscvIWH7imnBEe4+5hu8
 /u0EZHWjyQPT1nvtbEF/Q0Kg9i/YqCDMse7zLQQlF9qvnZzDAYO5lv25xZR6t9BXHcuq
 ah+dWBDMRgaikW+rvVfyvyISzE+jZZi8EytVeEJcb33yP6AZXWRPX4ij4dNNh6n//HA4
 ZeX5K7IRgHSrqr/EWrbf7Id2OL3sA+Y9zt+wp0c875bq5Eka/sHOIgqCnKbwSuEhZiRH
 Ywn2sJjbAl32mBITdW2nABbm8slhsaxFggyDU0O6KlXeMgbBlIYIBTgAtq0NFFUY9INh
 Kx7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=qLgfnJa8TF+fqJn6Csm2aNbaRpOd4zDzxzOPf12HbGU=;
 b=bqSuiFZgzJP4Td4bztPjS+WHRbuiVW+07yFOlVDP+VhsvAAAK+ZiSjuQBEwD6EUmkg
 E0fBg93YErRLCKZoVPACnZDbj6M1XvSw6zv28uAMi0ZeW1H7RAB2j/kB1nsWa7Vw7B0e
 uubWseH1e7DZxinN+R2lqINzgNoVD+TGqp0prW6gg3m0AQPAn/yTLFGKHWz6gkuvjIW3
 5qKYHdAq6RcLuOUyfxLiuibFZpduohS/zyYTrRiaSvXxn144qM82g8wuDgV4KaATgd1A
 NRll1pTXE31TiUvMIJeQPMHuOG0bbE5Hs4zNs8KfvuklwKpaPeCcMGqT3ieaiztlhh+5
 cwCw==
X-Gm-Message-State: APjAAAUWYdNt47D6ysVIB+rhwH7ZZT7Vkt2KNM+MGNQrIvXVI1onXkC9
 JXaz3sjhV4KgTd9myc5okOY4KQ==
X-Google-Smtp-Source: APXvYqxfD11gEiq1MLqW9BfGOXUQNepLHs6yxjwdSPwZov/5cEt3QgQYUXTBcN37CEYZ7nm6dUXSjQ==
X-Received: by 2002:a37:4d4a:: with SMTP id a71mr28591867qkb.327.1570528051524; 
 Tue, 08 Oct 2019 02:47:31 -0700 (PDT)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id h68sm8988573qkd.35.2019.10.08.02.47.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 02:47:30 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
Date: Tue, 8 Oct 2019 05:47:30 -0400
Message-Id: <B53A3CC0-CEA6-4E1C-BC38-19315D949F38@lca.pw>
References: <1570515358.4686.97.camel@mtksdccf07>
In-Reply-To: <1570515358.4686.97.camel@mtksdccf07>
To: Walter Wu <walter-zh.wu@mediatek.com>
X-Mailer: iPhone Mail (17A860)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_024733_174466_AA28A66B 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Cgo+IE9uIE9jdCA4LCAyMDE5LCBhdCAyOjE2IEFNLCBXYWx0ZXIgV3UgPHdhbHRlci16aC53dUBt
ZWRpYXRlay5jb20+IHdyb3RlOgo+IAo+IEl0IGlzIGFuIHVuZGVmaW5lZCBiZWhhdmlvciB0byBw
YXNzIGEgbmVnYXRpdmUgbnVtYmVycyB0bwo+ICAgIG1lbXNldCgpL21lbWNweSgpL21lbW1vdmUo
KSwgc28gbmVlZCB0byBiZSBkZXRlY3RlZCBieSBLQVNBTi4KCldoeSBjYW7igJl0IHRoaXMgYmUg
ZGV0ZWN0ZWQgYnkgVUJTQU4/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbWVkaWF0ZWsK
