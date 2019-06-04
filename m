Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702C7340C8
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 09:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pO/zR2OrdMdy6AMpMxSvr9RsrZjoMJNaDtdAdP8rME=; b=NdVY6fihHxCbJK
	ymuG4DUEk7qHPlmL7mkt1Jk8B0k8AXXIFx9Q4ZJFSD3No4OEqpSoIvC2nv9z3b11ztF2M+zz4h3Hv
	gwtLHOk9KOH96rhm558dQquTDl9woAZZj90ZVbx/wLqGekyfvAVzDzlnW4pONz0INHIjmq0qe2WzA
	/+rHs+3MBz0yfZistZQKU7Tbs/Y6jGpL2/y43o+NjgVccop5iP6AyJXG7myn7z5eA0sdBRKO4m89a
	pfa1hMgpvvENBJb4w/gmzPdgksC1nXaFs06whUz86tshxLPe6VdjJdc9QFYrt0JaFvKVPz/SsP0Ng
	CO0SYVcxmylg/uM5N3Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4Gq-00063q-GG; Tue, 04 Jun 2019 07:54:12 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Gg-0005su-VL
 for linux-mediatek@lists.infradead.org; Tue, 04 Jun 2019 07:54:05 +0000
Received: by mail-oi1-x233.google.com with SMTP id m202so3738748oig.6
 for <linux-mediatek@lists.infradead.org>; Tue, 04 Jun 2019 00:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cdoY+3UrNN3k7BHN8aNWywmO5ugEgyn9Qd2QfjzsAuo=;
 b=bEsPvPk0DVDweIcQ4mfy5vBH6qJf5qU8QfBnJjTHYsRGh9+dEiARILOFl/ydAmbbV7
 MgZzKM9EXIWmaiTm3Bhfvk8PrJER6JFWGcS8ncDEY3Vbl/WCN1KsxqNnLq/yGVX+f5sD
 6MngoQU1emapXEOiIllMyTsgK1dJed0uWr9mU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cdoY+3UrNN3k7BHN8aNWywmO5ugEgyn9Qd2QfjzsAuo=;
 b=sg1rmE92NQorjXyHSUwCU/fO7+zRMcgCJi4S1Y7T9cpzmK1D0KIccWgU4i8RNKozWd
 s08lrYd33+gXFTeRhdyauiZvD8iktu8Jw2BfkE5qOhB1yqcrDvSsBI7sFh9fs8iDDMO4
 WxdDbxQvNYzELfZIlmXk4WPL6R8FK6SUeNGT8VESRhK4A8koAyHsgyaldj5wg9jJLJzV
 ZPeLY9YbwIgqHGAAI4OJ7sJaxYzQKMR5Eped3jqEJOP1p6cW0eXWLXZfhqh2FJwtPn3f
 bUe7ysfzxDHX5Mspj/VkMUDaftoWXW6o59nLfSmc/H9hND9qTfquyyeS824dfKvxGmYL
 kh+w==
X-Gm-Message-State: APjAAAWf0opKfG6VSXzqTxtsXjeE9NBW0rSVS7waN0IuKE19FSn/hi3Z
 d44YvuvUrmoZewwb3CU64hXLIneFnxs=
X-Google-Smtp-Source: APXvYqx9SVOH9HHk3bkUbMYlBUymgsa87sb2LzyqzYmTf3r5VmI9d5bp2+ae0SlwCNeZ0Wakv6B0JA==
X-Received: by 2002:aca:b58b:: with SMTP id e133mr3568205oif.49.1559634841058; 
 Tue, 04 Jun 2019 00:54:01 -0700 (PDT)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com.
 [209.85.210.45])
 by smtp.gmail.com with ESMTPSA id o128sm6441629oih.48.2019.06.04.00.53.59
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 00:54:00 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id n14so18684068otk.2
 for <linux-mediatek@lists.infradead.org>; Tue, 04 Jun 2019 00:53:59 -0700 (PDT)
X-Received: by 2002:a9d:1b4b:: with SMTP id l69mr4047896otl.141.1559634839440; 
 Tue, 04 Jun 2019 00:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190528055635.12109-1-acourbot@chromium.org>
 <20190528055635.12109-8-acourbot@chromium.org>
 <b4320740-a016-4a0e-b9ae-e042fd305b12@xs4all.nl>
In-Reply-To: <b4320740-a016-4a0e-b9ae-e042fd305b12@xs4all.nl>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Tue, 4 Jun 2019 16:53:47 +0900
X-Gmail-Original-Message-ID: <CAPBb6MUTG3Pe6pU=gD0m0N3mOOHGyEp5Je58s3ahH_83a4i1rg@mail.gmail.com>
Message-ID: <CAPBb6MUTG3Pe6pU=gD0m0N3mOOHGyEp5Je58s3ahH_83a4i1rg@mail.gmail.com>
Subject: Re: [RFCv1 07/12] media: mtk-vcodec: abstract firmware interface
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_005403_150102_86517ED1 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-mediatek@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 6:16 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 5/28/19 7:56 AM, Alexandre Courbot wrote:
> > From: Yunfei Dong <yunfei.dong@mediatek.com>
> >
> > MT8183's codec firwmare is run by a different remote processor from
> > MT8173. While the firmware interface is basically the same, the way to
> > invoke it differs. Abstract all firmware calls under a layer that will
> > allow us to handle both firmware types transparently.
> >
> > Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> > Co-developed-by: Alexandre Courbot <acourbot@chromium.org>
> > Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> > [acourbot: refactor, cleanup and split]
>
> High-level question: is the mt8183 firmware different from the MT8173?
> And if so, is or will that firmware be part of linux-firmware?

Yes, the firmware is different, and AFAICT it will be posted to linux-firmware.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
