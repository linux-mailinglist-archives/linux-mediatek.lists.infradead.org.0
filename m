Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4729FC86E5
	for <lists+linux-mediatek@lfdr.de>; Wed,  2 Oct 2019 13:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DGr/YD9u4/eh6GrLoUQTknKmRpXybrs8mv8ErYy3cU=; b=hBuW5KDClDl5/E
	isyud2JWNH4ba6gHoOfv/iarMOUFsDFRrN3dvIk1fUAtVO30NX5m0Lry7DXGlusZkjJ9sc9rqhQFW
	7ti+zO7IHs/aiPib/zn7xIiras67wxeajl0UAVHEbi2uvyJrs5YbGjDDSco7ehVehqixRX2rX72pY
	gfuUI4WXDF15SFBFHpr6PWyCYqFkaceVEgVEnFSAvQcFY/5KpOb9fzF7S6Q6m8pI/Qt0nRtVaZRCS
	m0FlcIQ8uAekn3q6zy37pwaa0EMAP23boW6YhTH8XNOGagK6AiI7ZuCJaZomdWP1ZIGpZ1PvwCG8h
	HjtYRwZzelCXxAs7ml9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcOp-0004b7-NH; Wed, 02 Oct 2019 11:02:27 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcOh-0004TK-AF; Wed, 02 Oct 2019 11:02:20 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 04:02:15 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="182014760"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 04:02:10 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 0BB2220976; Wed,  2 Oct 2019 14:02:08 +0300 (EEST)
Date: Wed, 2 Oct 2019 14:02:08 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [RFC,V2,07/11] media: platform: Add Mediatek ISP P1 private
 control
Message-ID: <20191002110207.GD972@paasikivi.fi.intel.com>
References: <jungo.lin@mediatek.com>
 <20190510015755.51495-8-jungo.lin@mediatek.com>
 <49a8ba54-aba4-1915-6732-987a58e8bd3c@xs4all.nl>
 <20191002105559.GC972@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002105559.GC972@paasikivi.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_040219_368049_467DAE22 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 Jungo Lin <jungo.lin@mediatek.com>, frederic.chen@mediatek.com,
 seraph.huang@mediatek.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, shik@chromium.org, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 01:55:59PM +0300, Sakari Ailus wrote:
> Hi Jungo, Hans,
> 
> On Mon, May 13, 2019 at 10:46:46AM +0200, Hans Verkuil wrote:
> > On 5/10/19 3:58 AM, Jungo Lin wrote:
> ...
> > > +struct v4l2_ctrl_config mtk_cam_controls[] = {
> > > +	{
> > > +	.ops = &mtk_cam_dev_ctrl_ops,
> > > +	.id = V4L2_CID_PRIVATE_GET_BIN_INFO,
> > 
> > Don't use "PRIVATE" in the name. I'd replace that with MTK to indicate
> > that this is mediatek-specific. Same for the next control below.
> > 
> > > +	.name = "MTK CAM GET BIN INFO",
> > > +	.type = V4L2_CTRL_TYPE_INTEGER,
> > > +	.min = (IMG_MIN_WIDTH << 16) | IMG_MIN_HEIGHT,
> > > +	.max = (IMG_MAX_WIDTH << 16) | IMG_MAX_HEIGHT,
> > > +	.step = 1,
> > > +	.def = (IMG_MAX_WIDTH << 16) | IMG_MAX_HEIGHT,
> > > +	.flags = V4L2_CTRL_FLAG_READ_ONLY | V4L2_CTRL_FLAG_VOLATILE,
> > 
> > Don't mix width and height. I recommend splitting this into two controls.
> > 
> > Sakari might have an opinion on this as well.
> > 
> > > +	},
> > > +	{
> > > +	.ops = &mtk_cam_dev_ctrl_ops,
> > > +	.id = V4L2_CID_PRIVATE_RAW_PATH,
> > > +	.name = "MTK CAM RAW PATH",
> > > +	.type = V4L2_CTRL_TYPE_BOOLEAN,
> > > +	.min = 0,
> > > +	.max = 1,
> > > +	.step = 1,
> > > +	.def = 1,
> > > +	},
> > 
> > RAW_PATH is a very vague name. If it is 0, then it is pure raw, and if it
> > is 1, then it is 'processing raw'? If so, call it "Processing Raw".
> 
> Jungo: what's the purpose of 

Please ignore the comment. I'll review a later version separately.

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
