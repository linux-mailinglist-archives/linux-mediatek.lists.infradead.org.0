Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EB82C2EF
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 11:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clFuBGmIZjouwY4mp/eIR5fyaS9kUTDbZtnOEYOfJWE=; b=qfMU2EHOg/R1ab
	WBshd76sNgBBZAuPCE9N68ZeZlXXi8umqZ3bhSZmvD2umyNJwjxsK3boxIk2oc0o7pCvAlPwSbmiz
	VU+qoSaTFEcryH/CO4lFwEch67VsmpR3qTxEP1NVAdjxmCVPtE40CSF509jrrXnlZTRMTR533BfMC
	ogda+5V1C2zVb2oE+Wcuf3ZxCXOsFANEwQtTnnELm4BgQRkZ5diiNGDWGnyzAO2DGuwO0DCfm4ANR
	4SprihUeClcYkZa6ixY0ZScBMXM5pDvTzEWizjLShfoVWMDBBDtHEZtdiyKl0XK94M2aElhY7kX2V
	sS9Y4umOhjvb5CByJZ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVYFg-0004Y8-2I; Tue, 28 May 2019 09:18:36 +0000
Received: from lb2-smtp-cloud9.xs4all.net ([194.109.24.26])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVYFc-0004XQ-QK
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 09:18:34 +0000
Received: from [IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13]
 ([IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13])
 by smtp-cloud9.xs4all.net with ESMTPA
 id VYFZhh8VhsDWyVYFahcRZ2; Tue, 28 May 2019 11:18:30 +0200
Subject: Re: [RFCv1 00/12] media: mtk-vcodec: support for MT8183 decoder
To: Alexandre Courbot <acourbot@chromium.org>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190528055635.12109-1-acourbot@chromium.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f143b2e2-45ab-9d59-a607-f2032206e4e0@xs4all.nl>
Date: Tue, 28 May 2019 11:18:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528055635.12109-1-acourbot@chromium.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfMM8dvHjwzwUAfKnKoP8luEtEGaVf32kshxDabImXd9jy0WyZNQu0oWcDuCA15v9nj/65NQVATJO4tPv31EblnvNkBcLyM0GlUCHRM2mkscgsxSaiswR
 z+uWhE+HAnoTjmtUpDFDsRwqLldLpm10GCvThGRZS9AwpB6rYzpOoJACHAi+y7ayANPTsKM8eXP10lvHUMh3XG3vFDJmZyk+ZKi4hili3Ha6LsQVHdZ1Kq3v
 vKz7PBFkC289Svxv/UAK1HyqfzxsmMyvf3hgblMRlP6QCjItw2KzTaQuDPaDKe25huRnygLIgRxG5gND9j3oXY1Z1GJ8dz7N4yXj4S9m59bZfu7ZZABtfHe3
 xnEJWDQZmDvZFYRZWNECTI8f1mrue7Twz7xEv+XgXHHNARAg5dowSUiLwU3VaLo7hq3660hThRLml4Z47FJzmQHHI23PFddGlMShAwD4IcU9WP0Gm3pZagt5
 uj3w07yiQs3Z5ISYUg9Ic/KY+HpW5qmmXcqyIeQwT3ro8nPkQ5zdw8Ifphm4h2EKGIXgHZae/WMch5Sz9rDGyVUtTyRv4tUkPXalEvIEwlgMP4zknzhckwVy
 kYI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_021833_010444_A51B0239 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 5/28/19 7:56 AM, Alexandre Courbot wrote:
> This series is a refactoring/split of the initial patch for MT8183 codec support
> that was posted for Chrome OS [1] in order to make it upstreamable.
> 
> The line count has been significantly reduced compared to the initial patch,
> although support for the MT8183 encoder is not here yet to limit the amount of
> code to review.
> 
> Although the series applies on top of today's media tree, it will not compile
> until support for the SCP is merged, hence the RFC status. Note also that the
> H.264 structures used and implementation of the stateless codec API may not be
> completely up-to-date. So the goal of this publication is to review the general
> idea (especially split unto stateful and stateless ops), and maybe merge the
> first 5 patches.
> 
> Patches 1-5 are cleanup/small fixes that came while working on this series. They
> should be harmless and can be merged.

Merging these makes sense. I should be able to do that when v2 is posted with the
SPDX conversion.

Regards,

	Hans

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
