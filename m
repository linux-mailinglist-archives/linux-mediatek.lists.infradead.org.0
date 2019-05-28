Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD8F2C2E4
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 11:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNjY9YDpqZAh4YL0nZzrhLym5Kk5xpNPITPmGz/P4yQ=; b=t46Im68X8w4mD1
	sCpLZ2pZspKv2q/ATPm38BmecRo7+NXAEtVMY8c9JhZOolummzB6mfDw38Fpbdt8+RBnsNPcxbkkw
	oMkp+KQE3fe8zvydEoDPlL6GDSNKPyTSizci9bPt7bAVDWvwppHwzu8twQyU3oVYRg9oJTXnomTYG
	WvFhtAukSnFmcc18mcOj2AKaAsOHP7LrIjS8hVkBg/7oVAiq3liJzu7RlkQnXti63csU6gzg5ZqnB
	NuK/ypHLyQxfD8bPluvlB+mOYNw8u7ehwaFtcG4jkQOEpkXI6GSau0/wayXvbzUMzPXJ0NbqnehoN
	THzqRv0pdgcNk0npxSXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVYDS-0004BH-Qy; Tue, 28 May 2019 09:16:18 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVYDQ-0004AZ-36
 for linux-mediatek@lists.infradead.org; Tue, 28 May 2019 09:16:17 +0000
Received: from [IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13]
 ([IPv6:2001:983:e9a7:1:10b2:2e62:e4b1:bd13])
 by smtp-cloud9.xs4all.net with ESMTPA
 id VYDLhh7WDsDWyVYDMhcQrR; Tue, 28 May 2019 11:16:12 +0200
Subject: Re: [RFCv1 07/12] media: mtk-vcodec: abstract firmware interface
To: Alexandre Courbot <acourbot@chromium.org>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190528055635.12109-1-acourbot@chromium.org>
 <20190528055635.12109-8-acourbot@chromium.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <b4320740-a016-4a0e-b9ae-e042fd305b12@xs4all.nl>
Date: Tue, 28 May 2019 11:16:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528055635.12109-8-acourbot@chromium.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfHQtOX5MADbrSc0BgR3Xf4uWHabvx/iNsQfFjPfE1Hf9KtO+FwUZN9IsdsogUKl6uB7HAuflCzsZ3lukkMA0xM4v976x9GK4kn5ZkOCn2KflZQjmqe6N
 t9aZc5owBO9OFgzn2FvpSVErPNkgx3dBFKtjxg4QcQ0hiMKQ5zAlAsDNXpwja9aOG9iq8kXlQc0Il1NXLyHuDjNobyi4w44pall/sd8cciHEdRqbI64Q8Fpd
 1DpnKdVTuH7mWd25wXMObFc+eLQ/iqIFyA+JptP0h6ZI+sQcv47lLsxTLxAtEXxM8lPGbJCos5fLIN0QydR1vSYScr4qNxVwxdirIO2pArsRdPhQjZb1UgPg
 f92vGuWQi5naaIqboo45SRDEO69J21avyhJjd9VprAfVMpb3F7lEkYPt7Fr7eJ8T4lvofRYhVTucYQklvWhSF+z128KPPAu+iFKJDISsHkpRciZjVoovNJjN
 C0YmXMtHZapVfZ5+aHTVIZ5zxZ9P0xGpIclS5wECvZnrp6xHxBlL6eCBTcZvzzlQZehFOeyE2gsu2fpy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_021616_299059_0A71FF52 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
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
> From: Yunfei Dong <yunfei.dong@mediatek.com>
> 
> MT8183's codec firwmare is run by a different remote processor from
> MT8173. While the firmware interface is basically the same, the way to
> invoke it differs. Abstract all firmware calls under a layer that will
> allow us to handle both firmware types transparently.
> 
> Signed-off-by: Yunfei Dong <yunfei.dong@mediatek.com>
> Co-developed-by: Alexandre Courbot <acourbot@chromium.org>
> Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
> [acourbot: refactor, cleanup and split]

High-level question: is the mt8183 firmware different from the MT8173?
And if so, is or will that firmware be part of linux-firmware?

Regards,

	Hans

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
