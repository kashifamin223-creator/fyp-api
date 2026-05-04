using common;
using Common;
using DAL;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
namespace fyp.Controllers
{
    [ApiController]
    public class PatientController : ControllerBase
    {
        private readonly InternDAL _dal;
        private readonly GraduateDAL _Gdal;
        public PatientController(InternDAL dal, GraduateDAL Gdal)
        {
            _dal = dal;
            _Gdal = Gdal;
        }

        [HttpPost]
        [Route("api/InternForm")]
        public IActionResult InternForm([FromBody] Intern intern)
        {
            if (intern == null)
            {
                return BadRequest("Invalid Data");
            }
            bool iSaved = _dal.SaveIntern(intern);
            if (iSaved)
            {
                return Ok(intern); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Graduate//========//========//========//

        [HttpPost]
        [Route("api/SaveGraduate")]
        public IActionResult SaveGraduate([FromBody] Graduate graduate)
        {
            bool result = _Gdal.SaveGraduate(graduate);

            if (result)
                return Ok("Graduate Saved Successfully");
            else
                return BadRequest("Error Saving Graduate");
        }
        
        //OldAge//========//========//==========//

        [HttpPost]
        [Route("api/OldForm")]
        public IActionResult OldForm([FromBody] Old old)
        {
            if (old == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = OldDAL.SaveOld(old);
            if (iSaved)
            {
                return Ok(old); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Employed//======//======//=======//

        
        [HttpPost]
        [Route("api/EmployedForm")]
        public IActionResult EmployedForm([FromBody] Employed employed)
        {
            if (employed == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = EmployedDAL.SaveEmployed(employed);
            if (iSaved)
            {
                return Ok(employed); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Unemployed//========//==========//=========//

        [HttpPost]
        [Route("api/UnemployedForm")]
        public IActionResult UnemployedForm([FromBody] Unemployed unemployed)
        {
            if (unemployed == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = UnemployedDAL.SaveUnemployed(unemployed);
            if (iSaved)
            {
                return Ok(unemployed); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Parents//=========//=========//=========//

        [HttpPost]
        [Route("api/ParentsForm")]
        public IActionResult ParentsForm([FromBody] Parents parents)
        {
            if (parents == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = ParentsDAL.SaveParents(parents);
            if (iSaved)
            {
                return Ok(parents); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Trauma//==========//===========//===========//

        [HttpPost]
        [Route("api/TraumaForm")]
        public IActionResult TraumaForm([FromBody] Trauma trauma)
        {
            if (trauma == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = TraumaDAL.SaveTrauma(trauma);
            if (iSaved)
            {
                return Ok(trauma); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Harassment//=========//=========//=========//

        [HttpPost]
        [Route("api/HarassmentForm")]
        public IActionResult HarassmentForm([FromBody] Harassment harassment)
        {
            if (harassment == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = HarassmentDAL.SaveHarassment(harassment);
            if (iSaved)
            {
                return Ok(harassment); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Child//=========//=========//=========//

        [HttpPost]
        [Route("api/ChildForm")]
        public IActionResult ChildForm([FromBody] Child child)
        {
            if (child == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = ChildDAL.SaveChild(child);
            if (iSaved)
            {
                return Ok(child); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }
        }

        //Signup//=========//=========//=========//

        [HttpPost]
        [Route("api/SignupForm")]
        public IActionResult SignupForm([FromBody] Signup signup)
        {
            if (signup == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = SignupDAL.SaveSignup(signup);
            if (iSaved)
            {
                return Ok(signup); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }

        }

        //Login//=========//=========//=========//

        [HttpPost]
        [Route("api/LoginForm")]
        public IActionResult LoginForm([FromBody] Login login )
        {
            if (login == null)
            {
                return BadRequest("Invalid Data");
            }

            bool iSaved = LoginDAL.SaveLogin(login);
            if (iSaved)
            {
                return Ok(login); // response me data return

            }
            else
            {
                return BadRequest("User Not Saved");

            }

        }

    }

}
