Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D868F2C2B8
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 11:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iad0fxg7D+kMvErNKN2muBST72IfxHrjvAPJogt8aBo=; b=f4GX4Ly62G7iLM
	MnyScmO0XaQ75sBakAija8VAeM0NMc9cehW1bi97QkOEm1YqHGf057q6N5GqNcl82ZrdfB0boG0ra
	hUxzlGizLG5fYBQk7ZSL2iZ9Eo94qBsrIujAVoZQflaEKC6UVesw2FdE2gQ2k71tfbiRUyK5bORnB
	cSBvkH44biuNvaacCx0kgC7YGrDJhycfRBVrZKX+EWupMqktFdywQWn35PDvxCuV6x16xVfD2WPWj
	x4DZtdkAjcrWb4It8rLOsSYV0/RNvZEid/yDMHiX7nt7RSFKlrje5RJgJ7DvD7MNt5Hy9YR3ZgZ/u
	ljbhNY7gzJYRk+shWfzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVY5i-0000Id-Fs; Tue, 28 May 2019 09:08:18 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVY5f-0000I3-9V
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 09:08:16 +0000
Received: by mail-oi1-x230.google.com with SMTP id y10so13687816oia.8
 for <linux-mediatek@lists.infradead.org>; Tue, 28 May 2019 02:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kDByEXQ6Hf0CbYi5tGfeP4Y/wNBK9tNQLpjcw1bOeZo=;
 b=OP/IgysQdXyBC7aWcc8ztRELyrZYczvf6ydXAFrauGcAeQPQ0aQnrLJXIIYpVOmxav
 P0uChtMDV5cZ69pAuopjFCS5FE2RovXlnTPZzChBtLIav+10P9CnxY/BWxIGjVBzCQeP
 6TjLD3xAnXvZm6vT318aWMnXZamSlqFjbL0Oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kDByEXQ6Hf0CbYi5tGfeP4Y/wNBK9tNQLpjcw1bOeZo=;
 b=HQUbBOS8d1NyViz8C+6qR15mHM5YkpyCTPcLK+cY3VsDqcMiG9zbO+v1C6kHg6MNq4
 tHS2OCLUCMdQM4UOqXBFe/eL6Ac3H8j8dJZ3N2KD5LMCVuiZdCThiCTSEt4LUGW8Tlp5
 4NbpYuwhTBcXpOCFLjCc85JarC8PAxJhCYCZNgNhuJB3aZ0vvUZpMzOZbyhdq5CXdtGl
 CaDABdOGofJW+IRGZWnf/Ftn8u5fH2BYXtFCicEdY2lwxHJ3CT9Oxlxr/gpsTucD7nYJ
 AO/r7I4MAEn9PXOkkW0wl/7dnHo1/0TcGIlAxuHQwMzlnIfHp4SmPtc6EYQkB2Qr/JeA
 /bow==
X-Gm-Message-State: APjAAAXCO9AVFGtNGHkwY62InMJYdyn72Utm1PJTRw4TCgV8i8okcva/
 fmX/xYiM4d1o4RFIBaCur94+FPCWZDs=
X-Google-Smtp-Source: APXvYqxfq4HjfF9PmJ4JdTrjUJurVsq6j2Wp73MoKeyWHiSjYW5NO3fUPb8sGxEqZSLQRqdx3oPXEQ==
X-Received: by 2002:aca:4404:: with SMTP id r4mr1934423oia.130.1559034493540; 
 Tue, 28 May 2019 02:08:13 -0700 (PDT)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com.
 [209.85.167.180])
 by smtp.gmail.com with ESMTPSA id l65sm4853834oif.20.2019.05.28.02.08.12
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 02:08:12 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id z65so13664592oia.11
 for <linux-mediatek@lists.infradead.org>; Tue, 28 May 2019 02:08:12 -0700 (PDT)
X-Received: by 2002:aca:3c1:: with SMTP id 184mr2080922oid.170.1559034491936; 
 Tue, 28 May 2019 02:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190528055635.12109-1-acourbot@chromium.org>
 <20190528055635.12109-5-acourbot@chromium.org>
 <fa11a504-071e-f786-8564-cb7e95248f64@xs4all.nl>
In-Reply-To: <fa11a504-071e-f786-8564-cb7e95248f64@xs4all.nl>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Tue, 28 May 2019 18:08:00 +0900
X-Gmail-Original-Message-ID: <CAPBb6MWKm2DxRdtWur80EkxvLYj_t7Dr62E2h0Xdm5A6wURV5A@mail.gmail.com>
Message-ID: <CAPBb6MWKm2DxRdtWur80EkxvLYj_t7Dr62E2h0Xdm5A6wURV5A@mail.gmail.com>
Subject: Re: [RFCv1 04/12] media: mtk-vcodec: fix copyright indent
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_020815_356372_51F8F2D1 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 LKML <linux-kernel@vger.kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 6:07 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 5/28/19 7:56 AM, Alexandre Courbot wrote:
> > From: Yunfei Dong <yunfei.dong@mediatek.com>
> >
> > Minor identation fix for copyright notice in a few source files.
>
> How about converting to using SPDX as well?

Yeah, that would be much better. Should have thought about it.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
