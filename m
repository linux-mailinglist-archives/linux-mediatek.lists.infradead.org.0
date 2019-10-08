Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F48CF8BC
	for <lists+linux-mediatek@lfdr.de>; Tue,  8 Oct 2019 13:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWRymKzfFmbrPyfpWHIg/UuhDsUO35UzO3sW0/8QVuU=; b=B66p/pLW96waqH
	PUmDqCDRgktGp4krcgod0caokPB993/Q0adODjjOxUf9bPNM1V4T2x7Q9+RSdhpGg/7rvdYIMgMbQ
	IBlmRuidYXrzQu+11BpfZ3WnW6ok5H5HeNioH4S1b5Va0Y61PIjEagjV0Q1j+AUsYlY+VQRCUBNjK
	ejc/OfPx59v/JLmGE2DKjbEcjhU9FH6+6jtfvRWExxU3ikm0UM+ivR3R03byPd4LIfaFITuvVcxZu
	kI99DecvZREP7vmd1w1EeB4bWFhENBINV4D8vPRc2kEierb4OWnqnL9J33JZpNXwsASZ7e2s2E05T
	wnCV+kbx+ID+XyzHHIKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHntG-0003fW-DA; Tue, 08 Oct 2019 11:42:54 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHntC-0003el-18
 for linux-mediatek@lists.infradead.org; Tue, 08 Oct 2019 11:42:51 +0000
Received: by mail-qk1-x743.google.com with SMTP id x134so16375492qkb.0
 for <linux-mediatek@lists.infradead.org>; Tue, 08 Oct 2019 04:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=3JJSHu9FsmPxAujVouhMDsGNkk6sBiZ/QmGwiiONFB4=;
 b=ft1ONni5tzPFm7vpcdDKsmvlZcXVOpt9il2RREKA5mDs/iXlDAWt12DMHLjZ40/uLa
 W67IwIJbw0KNkBqIv4mqZyBbImfLaMu0nTzVSEFCPsLy8grCpjixyboBqo9XE2IH4tVd
 hGjwfHEsKsBMR5ENiBLo+UUOk6omMbdmasKrLXV3aEjP9VAjG1cdDLfdFo7qNYcJWoed
 gfSiltjTPQqJJzwlxjca6gnd4c0n7twpHnJ+3DTdcwWAOFKCl2oc0uPUxGLRuRIDyNjK
 5dSd5S5fEJI+6sKBBNyzSXaremLmFju9Z/ytR3YTieR9ADzSZj1Br7Zm7qBD0AloT/mj
 ub5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=3JJSHu9FsmPxAujVouhMDsGNkk6sBiZ/QmGwiiONFB4=;
 b=GmzmBzQlDGojbscz5610mmywlZ5IKX2NPoyd+722va3wojLZTdyRxH/B4axPxUChl4
 L4nuhjILyftoudUbVI95k5CRr5BxfqluhxlnDC1/jDgKJ3NVDRe25f9ay/H0kmRbcfOo
 cA1lg0dZER3j2f8yTdY9s6HQMD9TOqLuGxOUJg0xXIycgRzeP8g1u0NOb+977T2LiJme
 OCAXkEZm1/kG+L9rgNh9hdln6fZAf5gC55+gWsUppJkTxm0vaxQX2hpeFoh23hMYVv1K
 qEBkCmVOBSI9mi1dbOcgfrlQPvqPnNq0RRwHPFHoSu6JPLD8Bih0ri4GWVAjIF4AwA31
 VHbQ==
X-Gm-Message-State: APjAAAWUmjWMPjuwVg2n8+RPkEAptjB8skgE565kP+9uYRj0OSj1C/ZI
 nBC+74I8w/kqnOLgQ934Bg0qtg==
X-Google-Smtp-Source: APXvYqyvnmDGXV158zZXzurCCRh8+3D7IL8S9DfULYqcaPIxyxkKvDspSY364oomPYuJWS2qYqpqQA==
X-Received: by 2002:a37:bec1:: with SMTP id
 o184mr28322315qkf.479.1570534969079; 
 Tue, 08 Oct 2019 04:42:49 -0700 (PDT)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id g19sm11133394qtb.2.2019.10.08.04.42.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 04:42:48 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
Date: Tue, 8 Oct 2019 07:42:47 -0400
Message-Id: <D2B6D82F-AE5F-4A45-AC0C-BE5DA601FDC3@lca.pw>
References: <1570532528.4686.102.camel@mtksdccf07>
In-Reply-To: <1570532528.4686.102.camel@mtksdccf07>
To: Walter Wu <walter-zh.wu@mediatek.com>
X-Mailer: iPhone Mail (17A860)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_044250_126600_255225D3 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



> On Oct 8, 2019, at 7:02 AM, Walter Wu <walter-zh.wu@mediatek.com> wrote:
> 
> I don't know very well in UBSAN, but I try to build ubsan kernel and
> test a negative number in memset and kmalloc_memmove_invalid_size(), it
> look like no check.

It sounds like more important to figure out why the UBSAN is not working in this case rather than duplicating functionality elsewhere.
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
